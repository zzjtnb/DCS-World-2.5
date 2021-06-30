"use strict";

/* jshint esversion: 6 */
/* jshint bitwise: false */
/* jshint jquery: true */

let oTable;

function refresh() {
	oTable.api().ajax.reload();
	setTimeout(refresh, 500);
}

function onReady(url) {
	oTable = $('#watches').dataTable({
		ajax: url,
		dom: 'Bfrtip', //buttons setup
		buttons: [
			'csvHtml5'
		],
		paging: false,
		search: {
			regex: true
		},
		autoWidth: false,
	});

	refresh();
}
