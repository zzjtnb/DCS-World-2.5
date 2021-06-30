"use strict";

/* jshint esversion: 6 */
/* jshint bitwise: false */
/* jshint jquery: true */

let oTable;

const xmlhttp = new XMLHttpRequest();
function sendParams(name, ind){
	xmlhttp.open("GET", `/allocations.post?name=${name}&ind=${ind}`, true);
	xmlhttp.send();
}

function setOnChange($list){
	$list[0].onchange = ()=>{
		sendParams($list[0].id, $list[0].selectedIndex);
	}
}

function refresh(){
	oTable.api().ajax.reload();
	setTimeout(refresh, 500);
}

function onReady(url){
	$.getJSON( "/modules.json", (modules)=>{
		const $onNew = $('#break_on_new');
		const $onSTL = $('#break_on_stl');
		const $onDelete = $('#break_on_delete');
		const $onThread = $('#break_on_thread');

		for (let m of modules){
			$onNew.append($('<option/>', {text: m, name: m}));
			$onSTL.append($('<option/>', {text: m, name: m}));
			$onDelete.append($('<option/>', {text: m, name: m}));
		}

		setOnChange($onNew);
		setOnChange($onSTL);
		setOnChange($onDelete);
		setOnChange($onThread);
	});

	oTable = $('#allocations').dataTable({
		ajax: url,
		dom: 'frti', //buttons setup
		paging: false,
		search: {
			regex: true
		},
		autoWidth: false,
	});

	refresh();
}
