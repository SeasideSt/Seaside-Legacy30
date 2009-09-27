accessing-files
handlerCss
	^ '/* html */
body, input, textarea, select {
	color: #002842;
	font-size: 12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
input, textarea, select {
	margin-right: 0.5em;
}
input.text, textarea {
	width: 200px;
}
a {
	color: #008aff;
	text-decoration: none;
}

/* headings */
h1, h2, h3, h4, h5, h6 {
	color: #01598d;
	margin-bottom: 1ex;
	font-weight: normal;
}
table {
	border: 0;
	border-collapse: collapse;
}
td, th { padding: 3px 1em 3px 0; }
th { text-align: right; }

/* special */
h1.logo a { 
	width: 200px;
	height: 106px;
	outline: none;
	display: block;
	text-indent: -100em;
	background: url(logo.png) no-repeat;
}
h1.title a { color: #01598d; }
span.unspecified { color: #ff7000; }
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