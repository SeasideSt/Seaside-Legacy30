accessing-styles
mainCss
	^ '/* html */
body {
	color: #002842;
	font-size: 12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	background-color: #fbfffa;
}
input, textarea, select {
	color: #002842;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
a, a:link, a:active, a:visited, a:focus, a:hover {
	color: #008aff;
}

/* headings */
h1, h2, h3, h4, h5, h6 {
	color: #01598d;
	margin-bottom: 1ex;
	font-weight: normal;
}

/* special */
a.logo {
	width: 200px;
	height: 106px;
	outline: none;
	display: block;
	text-indent: -100em;
	background: url(logo.png) no-repeat;
}
div.version {
	font-size: 80%;
}
span.unspecified {
	color: #ff7000;
}

a.download {
	background: url(save.png) no-repeat;
	background-position: 0 50%;
	padding-left: 18px;
}

/* walkback */
.walkback th {
	width: 150px;
	text-align: left;
	vertical-align: top;
}'