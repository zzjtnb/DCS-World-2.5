"use strict";

/* jshint esversion: 6 */
/* jshint bitwise: false */
/* jshint jquery: true */

function highlightJson(data)
{
	const str = JSON.stringify(data, null, "    ");
	const json = str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
	return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function (match) {
		let cls = 'number';
		if (/^"/.test(match)) {
			if (/:$/.test(match)) {
				cls = 'key';
			} else {
				cls = 'string';
			}
		} else if (/true|false/.test(match)) {
			cls = 'boolean';
		} else if (/null/.test(match)) {
			cls = 'null';
		}
		return '<span class="' + cls + '">' + match + '</span>';
	}).replace(/    /g, "&nbsp&nbsp&nbsp&nbsp").replace(/\n/g, "<br>");
}

function getDump(){
	const xmlhttp = new XMLHttpRequest();
	xmlhttp.open("GET", "/request_dump", true);
	xmlhttp.send();

	setTimeout(()=>{
		$.get("/dump.json", function( data ) {
			document.getElementById('output').innerHTML = highlightJson(data);
		});
	}, 1000);
}
