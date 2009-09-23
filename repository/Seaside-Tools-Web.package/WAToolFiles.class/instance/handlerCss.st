accessing-files
handlerCss
	^ '/* html */
body, input, textarea, select {
	color: #002842;
	font-size: 12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
select.fix {width:340px}
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

a.selected {font-weight:bold}

a.wa-action {background:#eee;padding:3px 6px 3px 6px;border:1px solid #888;width:120px;-moz-border-radius: 5px; -webkit-border-radius: 5px;}
a.wa-action:hover {background:#fff}
/* special */
.smallLogo {border:2px solid #ccc; background: url(smallLogo.png) no-repeat; height:54px; width:100px};
table.wa-config {width:100%;padding:0}
table.wa-config td {padding:0px}


/* headings */
h1, h2, h3, h4, h5, h6 {
	color: #01598d;
	margin-bottom: 1ex;
	font-weight: normal;
}

h2,h3,h4 {margin:2px 0px}

table {
	border: 0;
	border-collapse: collapse;
}

.group {border:1px solid #e0e0e0;margin-bottom:4px}
.groupTitle {height:20px;font-size:1.2em;background:#eee;color:#01598d}
.groupContent {padding-left:4px}

td, th { padding: 3px 1em 3px 0; }
label {font-weight:bold; padding: 3px 1em 3px 2px}
th { text-align: left; }

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