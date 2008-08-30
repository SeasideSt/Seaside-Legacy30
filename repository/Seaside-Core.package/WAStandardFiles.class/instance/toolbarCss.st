accessing-styles
toolbarCss
	^ 'body {
	margin-bottom: 25px;
}
#toolbar {
	z-index: 20;
	position: fixed;
	left: 0;
	right: 0;
	bottom: 0;
	padding: 2px;
	color: #444;
	background-color: #eee;
	border-top: 1px solid #aaa;
	font: 10pt Verdana, Arial, Helvetica, sans-serif;
}
#toolbar a {
	color: #444;
	padding-left: 3px;
	padding-right: 3px;
	text-decoration: none;
}
#toolbar a:hover {
	color: #111;
}
#toolbar a.deprecated {
	color: #ff7000;
}'