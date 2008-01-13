styles
treeReportCss
	^ '.treeReport {
	border: solid 1px #ccc;
	background-color: white;
}
.treeReport th {
	padding: 4px;
	text-align: left;
	background-color: #ccc;
}
.treeReport td {
	text-align: left;
	vertical-align: top;
	padding-right: 5px;
}
.treeReport td.indent {
	margin: 0;
	padding: 1px;
	white-space: nowrap;
}
.treeReport td.indent .space {
	float: left;
	width: 16px;
	height: 16px;
}
.treeReport td.indent .space a {
	width: 16px;
	height: 16px;
	outline: none;
	display: block;
	background-position: center center;
	background-image: url(arrowright.gif);
}
.treeReport td.indent a.expanded {
	background-image: url(arrowdown.gif);
}'