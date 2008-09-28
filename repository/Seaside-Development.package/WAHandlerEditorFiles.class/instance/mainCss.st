accessing-styles
mainCss
	^ '/* html */
body {
	color: #002842;
	font-size: 12px;
	font-family: Helvetica, Verdana, Arial, sans-serif;
	background-color: #fbfffa;
}
input, textarea, select {
	color: #002842;
	margin-right: 0.5em;
	font-family: Helvetica, Verdana, Arial, sans-serif;
}
input.text, textarea {
	width: 200px;
}
a, a:link, a:active, a:visited, a:focus, a:hover {
	color: #008aff;
	text-decoration: none;
}

/* headings */
h1, h2, h3, h4, h5, h6 {
	color: #01598d;
	margin-bottom: 1ex;
	font-weight: normal;
}
th {
	text-align: right;
	padding-right: 1em;
}

/* special */
h1.logo a {
	width: 200px;
	height: 106px;
	outline: none;
	display: block;
	text-indent: -100em;
	background: url(logo.png) no-repeat;
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