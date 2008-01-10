styles
treeReportCss
	^ '.treeReport {
	border: solid 1px #ccc;
	background-color: white;
}
.treeReport th {
	padding: 5px;
	text-align: left;
	background-color: #ccc;
}
.treeReport td {
	vertical-align: top;
	padding-right: 1em;
	white-space: nowrap;
}
.treeReport .indent {
	float: left;
	height: 16px;
	width: 16px;
}
.treeReport .indent a {
	float: right;
	width: 16px;
	height: 16px;
	display: block;
	background-position: center center;
	background-image: url(arrowright.png);
}
.treeReport .indent a.expanded {
	background-image: url(arrowdown.png);
}'