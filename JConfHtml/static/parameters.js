"use strict";

/* jshint esversion: 6 */
/* jshint bitwise: false */
/* jshint jquery: true */

const FLOAT_SLIDER_STEP = 1000.0;

const xmlhttp = new XMLHttpRequest();
const url = "http://127.0.0.1:8081/parameters.json";

const COOKIE_NAME = "prop_cur_tab";
const COOKIE_EXPIRES = 7;

function sendParams(params){
	xmlhttp.open("GET", `/parameter?${params}`, true);
	xmlhttp.send();
}

class WatchDog{
	constructor(){
		const t = this;

		t.xhr = new XMLHttpRequest();
		t.st = true;
		
		t.xhr.timeout = 4000;

		t.xhr.ontimeout = ()=>{
			t.st = false;
		};

		t.xhr.onload = ()=>{
			if(t.st === false || t.xhr.responseText === "1"){
				window.location.reload(true);
			}
			t.st = true;
		};
	}

	check(){
		const t = this;

		t.xhr.open("GET", "/parameters_dirty.json", true);
		t.xhr.send();
	}
}

const watchdog = new WatchDog();

function check_server(){
	watchdog.check();
	setTimeout(check_server, 4000);
}

function clamp(v, min, max){
	return Math.min(Math.max(v, min), max);
}

function tryParseFloat(v, oldV){
	let val = parseFloat(v);
	if(isNaN(val)){
		val = oldV;
	}
	return val;
}

class BaseEditor{
	constructor(data){
		this.data = data;
	}

	copyFrom(obj){
		for(let i = 0; i < this.$widgets.length; i++){
			const $w = this.$widgets[i];
			$w.val(obj.$widgets[i].val());
		}
	}
	
	send(){
		sendParams(this.genSendString());
	}
}

class FloatEditor extends BaseEditor{
	constructor(data){
		super(data);

		const t = this;
		
		data.max = Math.max(data.value, data.max);
		data.min = Math.min(data.value, data.min);

		t.$widgets = [
			$('<input/>', {type: 'text', value: data.value, size: 10}),
			$('<input/>', {type: 'text', value: data.min, size: 5}),
			$('<input/>', {type: 'text', value: data.max, size: 5}),
			$('<input/>', {type: 'range', style:"width:100%", value: data.value, min: data.min, max: data.max, step:(data.max - data.min) / FLOAT_SLIDER_STEP}),
		];

		[t.$editor, t.$minVal, t.$maxVal, t.$slider] = t.$widgets;

		// Hack for firefox to set initial value.
		t.$slider[0].value = data.value;

		t.oldMin = data.min;
		t.oldValue = data.value;
		t.oldMax = data.max;

		const onchange = () => {
			let minVal = tryParseFloat(t.$minVal.val(), t.oldMin);
			let maxVal = tryParseFloat(t.$maxVal.val(), t.oldMax);

			if(minVal > maxVal){
				[maxVal, minVal] = [minVal, maxVal];
			}

			const value = clamp(tryParseFloat(t.$editor.val(), t.oldValue), minVal, maxVal);

			t.$editor.val(value);

			t.$slider[0].value = value;
			t.$slider[0].min = minVal;
			t.$slider[0].max = maxVal;
			t.$slider[0].step = (maxVal - minVal) / FLOAT_SLIDER_STEP;

			t.send();
		};

		t.$editor[0].onchange = t.$minVal[0].onchange = t.$maxVal[0].onchange = onchange;
		t.$slider[0].oninput = () => {
			t.$editor.val(t.$slider.val());
			t.send();
		};
	}

	initUI($root){
		$root.append(this.$minVal, this.$editor, this.$maxVal, '<br>', this.$slider);
	}
	
	genSendString(){
		return `id=${this.data.id}&v=${this.$editor[0].value}`;
	}
}

class IntEditor extends BaseEditor{
	constructor(data){
		super(data);

		const t = this;
		
		t.$widgets = [
			$('<input/>', {type: 'text', value: data.value,	size: 10, change(){t.send();}})
		];

		[t.$editor] = t.$widgets;
	}

	initUI($root){
		$root.append(this.$editor);
	}

	genSendString(){
		return `id=${this.data.id}&v=${this.$editor[0].value}`;
	}
}

class Float3Editor extends BaseEditor{
	constructor(data){
		super(data);
		
		const t = this;

		t.$widgets = [
			$('<input/>', {type: 'text', value: data.x, size: 8, change(){t.send();}}),
			$('<input/>', {type: 'text', value: data.y, size: 8, change(){t.send();}}),
			$('<input/>', {type: 'text', value: data.z, size: 8, change(){t.send();}}),
		];

		[t.$x, t.$y, t.$z] = t.$widgets;
	}

	initUI($root){
		$root.append(this.widgets);
	}

	genSendString(){
		const x = parseFloat(this.$x[0].value);
		const y = parseFloat(this.$y[0].value);
		const z = parseFloat(this.$z[0].value);
		return `id=${this.data.id}&v=${x},${y},${z}`;
	}
}

class BoolEditor extends BaseEditor{
	constructor(data){
		super(data);

		const t = this;
		
		t.$widgets = [
			$('<input/>', {type: 'checkbox', checked: t.data.value, change(){t.send();}}),
		];

		[t.$editor] = t.$widgets;
	}

	initUI($root){
		$root.append(this.$editor);
	}

	genSendString(){
		const v = this.$editor[0].checked ? 1 : 0;
		return `id=${this.data.id}&v=${v}`;
	}
}

class FuncEditor extends BaseEditor{
	constructor(data){
		super(data);
		
		const t = this;

		t.$widgets = [
			$('<input/>', {type: 'button', value: '< < ! > >', click(){t.send();}}),
		];

		[t.$button] = t.$widgets;
	}

	initUI($root){
		$root.append(this.$button);
	}

	genSendString(){
		return `id=${this.data.id}&v=0`;
	}

	send(){
		sendParams(this.genSendString());
		setTimeout(() => {window.location.reload(true);}, 500);
	}
}

class ListEditor extends BaseEditor{
	constructor(data){
		super(data);
		
		const t = this;

		t.$widgets = [
			$('<select/>', {change(){t.send();}}),
		];

		[t.$select] = t.$widgets;

		const items = data.items;
		for(let i = 0; i < items.length; i++){
			const o = $('<option/>', {text: items[i], name: items[i]});
			if(i === t.data.selected){
				o.prop('selected', true);
			}
			t.$select.append(o);
		}
	}

	initUI($root){
		$root.append(this.$select);
	}

	genSendString(){
		return `id=${this.data.id}&v=${this.$select[0].selectedIndex}`;
	}
}

class ColorEditor extends BaseEditor{
	constructor(data){
		super(data);
		
		const t = this;

		t.$widgets = [
			$('<input/>', {type: 'color', value: t.rgb2hex(data.r, data.g, data.b), change(){t.send();}}),
		];

		[t.$editor] = t.$widgets;
	}

	initUI($root){
		$root.append(this.$editor);
	}
	
	genSendString(){
		const v = this.hex2rgb(this.$editor[0].value);
		return `id=${this.data.id}&v=${v}`;
	}

	rgb2hex(r, g, b){
		const red = Math.round(r * 255);
		const green = Math.round(g * 255);
		const blue = Math.round(b * 255);
		return `#${((1 << 24) + (red << 16) + (green << 8) + blue).toString(16).substr(1)}`;
	}

	hex2rgb(h){
		const bigint = parseInt(h.slice(1, h.length), 16);
		const r = (bigint >> 16) & 255;
		const g = (bigint >> 8) & 255;
		const b = bigint & 255;
		return `${r / 255.0},${g / 255.0},${b / 255.0}`;
	}
}

class TextEditor extends BaseEditor{
	constructor(data){
		super(data);
		
		const t = this;

		t.$widgets = [
			$('<input/>', {type: 'text', value: data.text, size: 32}),
			$('<input/>', {type: 'button', value: 'Apply', click(){t.send();}}),
		];

		[t.$editor, t.$button] = t.$widgets;

		t.$editor[0].onchange = () => {
			t.send();
		};
	}

	initUI($root){
		$root.append(this.$widgets);
	}

	genSendString(){
		setTimeout(() => {window.location.reload(true);}, 500);
		return `id=${this.data.id}&v=${this.$editor[0].value}`;
	}
}

class FileEditor extends BaseEditor{
	constructor(data){
		super(data);
		
		const t = this;

		t.$widgets = [
			$('<input/>', {type: 'file', value: data.file_name, accept:'.json', change(){t.send();}}),
		];

		[t.$editor, t.$button] = t.$widgets;
	}

	initUI($root){
		$root.append(this.$widgets);
	}

	genSendString(){
		let reader = new FileReader();

		return `id=${this.data.id}&v=${this.$editor[0].value}`;
	}

	send(){
		const file = this.$editor[0].files[0];
		if(file === undefined){
			return;
		}

		const formData = new FormData();
		formData.append('file', file);
		formData.append('file_name', file.name);
		formData.append('id', this.data.id);	

		$.ajax({
			url: '/parameter_file',
			type: 'POST',
			// Form data
			data: formData,
			// Options to tell jQuery not to process data or worry about the content-type
			cache: false,
			contentType: false,
			processData: false,

			complete: ()=>{
				setTimeout(() => {window.location.reload(true);}, 500);
			}
		});

		this.$editor[0].value = null;
	}
}

class StaticText extends BaseEditor{
	constructor(data){
		super(data);
		
		const t = this;

		t.$widgets = [
			$('<span/>', {html: t.data.text}),
		];

	}

	initUI($root){
		$root.append(this.$widgets);
	}
	
	send(){
	}
}

function createCommonEditor(data){
	const editor = GUI_FACTORY[data.common_type](data.children[0]);
	editor.data = data;

	if(data.common_type !== 'file'){
		editor.send = ()=>{
			let sendStr = '';
			for(let c of data.children){
				c.editor.copyFrom(data.editor);
				sendStr = sendStr.concat(c.editor.genSendString()).concat('&');
			}

			sendParams(sendStr);
		};
	}else{
		editor.send = ()=>{
			for(let c of data.children){
				c.editor.copyFrom(data.editor);
				c.editor.send();
			}
		};
	}
	return editor;
}

const GUI_FACTORY = {
	'float': (data) => {return new FloatEditor(data);},
	'double': (data) => {return new FloatEditor(data);},
	'int': (data) => {return new IntEditor(data);},
	'float3': (data) => {return new Float3Editor(data);},
	'color': (data) => {return new ColorEditor(data);},
	'bool': (data) => {return new BoolEditor(data);},
	'func': (data) => {return new FuncEditor(data);},
	'list': (data) => {return new ListEditor(data);},
	'text': (data) => {return new TextEditor(data);},
	'common': createCommonEditor,
	'file': (data) => {return new FileEditor(data);},
	'statictext': (data) => {return new StaticText(data);},
};

class Node{
	constructor(parent, name, data){
		this.parent = parent;
		this.name = name;
		this.data = data;
		this.$element = null;
		this.children = [];	
	}

	findChild(childName){
		for(let c of this.children){
			if(c.name == childName){
				return c;
			}
		}
		return null;
	}
	
	findByPath(path){
		if(path.length === 0){
			return this;
		}

		const p = path[0];

		const child = this.findChild(p);
		if(child === null){
			return null;
		}

		return child.findByPath(path.slice(1, path.length));
	}

	add(path, data){
		const p = path[0];

		if(path.length == 1){
			this.children.push(new Node(this, p, data));
			return;
		}

		let child = this.findChild(p);
		if(child === null){
			child = new Node(this, p, null);
			this.children.push(child);
		}

		child.add(path.slice(1, path.length), data);
	}
}

function sortChildren(node){
	const props = [];
	const groups = [];

	for(let c of node.children) {
		if(c.data === null){
			groups.push(c);
		}else{
			props.push(c);
		}
	}

	groups.sort((a, b) => a.name.localeCompare(b.name));
	props.sort((a, b) => a.name.localeCompare(b.name));
	node.children = props.concat(groups);

	for(let c of node.children){
		sortChildren(c);
	}
}

function bootstrapCommonWidgets(root, node){
	if(node.data !== null && node.data.type === 'common'){
		node.data.children = [];
		for(let path of node.data.paths){
			const w = root.findByPath(path.split('/'));
			if(w !== null && w.data !== null){
				if(node.data.common_type === undefined){
					node.data.common_type = w.data.type;
				}
				node.data.children.push(w.data);
			}
		}
	}

	for(let c of node.children){
		bootstrapCommonWidgets(root, c);
	}
}

function createEditors(node){
	if(node.data !== null){
		node.data.editor = GUI_FACTORY[node.data.type](node.data);
	}

	for(let c of node.children){
		createEditors(c);
	}
}

function processData(data){
	const res = new Node(null, 'root', null);

	for(let item of data) {
		res.add(item[0].split('/'), item[1]);
	}

	sortChildren(res);
	bootstrapCommonWidgets(res, res);
	createEditors(res);
	return res;
}

function removeUnderlines(str){
	let i = 0;
	for(let c of str){
		if(c !== '_'){
			break;
		}
		i++;
	}

	let res = str.substr(i);
	if(res.length === 0){
		return res;
	}

	for(i = res.length - 1; i >= 0; i--){
		if(res[i] !== '_'){
			break;
		}
	}

	return res.substr(0, i + 1);
}

function createGroup(c){
	const noTableContainer = c.name[c.name.length - 1] === '_' ? false : true;

	const $group = $("<fieldset/>");
	const $label = $("<legend/>", {text: removeUnderlines(c.name)});
	if(noTableContainer === true){
		const $table = $('<table/>');
		$group.append($label, $table);
	}else{
		const $span = $('<span/>');
		$group.append($label, $span);
	}

	return $group;
}

function createWidget(c, p){
	const noTableContainer = p.name[p.name.length - 1] === '_' ? false : true;

	if(noTableContainer === true){
		const $tr = $('<tr/>');
		const $nametd = $('<td/>', {text: removeUnderlines(c.name) + ':'});
		const $guitd = $('<td/>', {id: c.data.id});

		$tr.append($nametd, $guitd);
		c.data.editor.initUI($guitd);

		return $tr;
	}else{
		const $namelabel = $('<label/>', {text: removeUnderlines(c.name) + ':'});
		const $span = $('<span/>', {id: c.data.id});

		c.data.editor.initUI($span);

		return [$namelabel, $span];
	}
	return null;
}

function createHeader(root){
	const $tabsList = $('<ul/>');
	const categories = root.children;

	const callback = ind => () => {Cookies.set(COOKIE_NAME, ind, {expires: COOKIE_EXPIRES});};

	for(let i = 0; i < categories.length; i++){
		const category = categories[i].name;
		const $li = $('<li/>');
		const $a = $('<a/>', {
			href: `#tabs-${i}`,
			text: removeUnderlines(category),
			click: callback(i),
		});
		$a.appendTo($li.appendTo($tabsList));
			
		categories[i].$element = $('<div/>', {id: `tabs-${i}`});
	}

	return $tabsList;
}

function createContent(node){
	for(let c of node.children) {
		if(c.$element === null){
			if(c.children.length > 0){
				c.$element = createGroup(c);	
			}else{
				c.$element = createWidget(c, node);
			}
		}else{
		}
	}

	for(let c of node.children){
		createContent(c);
	}
}

function bootstrapDOM(node){
	for(let c of node.children){
		bootstrapDOM(c);
	}

	if(node.parent !== null){
		node.parent.$element.append(node.$element);
	}
}

function onReady(){
	$.getJSON(url, data => {
		const root = processData(data);

		const $tabs = $("#tabs");
		root.$element = $tabs;

		$('#wrap').prepend(createHeader(root));

		createContent(root);
		bootstrapDOM(root);

		let tabIndex = 0;
		const ind = parseInt(Cookies.get(COOKIE_NAME));
		if(!isNaN(ind)){
			tabIndex = ind;
		}

		$tabs.tabbedContent().data('api').switchTab(tabIndex);
		
		check_server();
	});
}
