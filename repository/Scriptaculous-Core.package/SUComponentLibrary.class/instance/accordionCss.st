styles
accordionCss
	^ '.accordion dt,
.accordion dd {
	margin: 0;
	padding: 0;
}
.accordion dt {
	padding: 0.25em;
	background-color: #c5dea1;
}
.accordion dt.active {
	background-color: #e8a400;
}
.accordion dt a:link,
.accordion dt a:visited {
	color: #444;
	outline: none;
	display: block;
	text-decoration: none;
}
.accordion dt.active a:link,
.accordion dt.active a:visited {
	color: #000;
}'