rendering
style
	^ '.splitter-horizontal .handle {
	height: 5px;
	position: relative;
	background-color: red;
	cursor: row-resize;
}

.splitter-vertical div {
	float: left;
}
.splitter-vertical div.handle {
	float: left;
	width: 5px;
	height: 200px;
	position: relative;
	cursor: col-resize;
	background-color: red;

}'