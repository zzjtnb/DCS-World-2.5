"use strict";

/* jshint esversion: 6 */
/* jshint bitwise: false */
/* jshint jquery: true */

function generate_header_links(currentPage, rootId){
	const data = [
		['Main', '/'],
		['Watches', "/watches"],
		['Parameters', "/parameters"],
		['Allocations', "/allocations"],
		['Dump', "/dump"],
		['VFS', "/vfs"],
	];
	
	const $root = $(`#${rootId}`);
	const $table = $('<table/>', {border: "0"});
	const $tr = $('<tr/>');

	for(let i of data){
		if(i[0] === currentPage){
			continue;
		}

		const $td = $('<td/>');
		const $a = $('<a/>', {href: i[1], text: i[0]});
		$td.append($a);
		$tr.append($td);
	}

	$table.append($tr);
	$root.append($table);
}
