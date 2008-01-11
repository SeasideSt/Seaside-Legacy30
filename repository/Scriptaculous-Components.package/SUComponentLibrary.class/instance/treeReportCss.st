styles
treeReportCss
	^ '.treeReport {
	border: solid 1px #ccc;
	background-color: white;
}
.treeReport table {margin:0;padding:0;border:0}

.treeReport th {
	padding: 4px;
	text-align: left;
	background-color: #ccc;
}
.treeReport td {
	vertical-align: top;
	padding:0;
	margin:0;
	white-space: nowrap;
}
.treeReport .pr {padding-right: 1em;}
.treeReport .indent {
	height: 16px;
	width: 16px;
}
.treeReport .indent a {
	width: 16px;
	height: 16px;
	display: block;
	background-position: center center;
	background-image: url(arrowright.png);
}
.treeReport .indent a.expanded {
	background-image: url(arrowdown.png);
}'