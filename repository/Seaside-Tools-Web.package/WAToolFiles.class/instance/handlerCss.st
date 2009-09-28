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

a.wa-action, .groupContent a  {
		background:#eee;
		padding:3px 6px 3px 6px;
		border:1px solid #888;
		white-space:nowrap;
		width:120px;-moz-border-radius: 5px; -webkit-border-radius: 5px;}
.groupContent a {font-size:10px;padding:2px 5px 2px 5px;}
.groupContent a.large {font-size:100%}

a.wa-action:hover, .groupContent a:hover {background:#fff}

/* special */
.smallLogo {border:2px solid #ccc; background: url(smallLogo.png) no-repeat; height:54px; width:100px};
table.wa-config {width:100%;padding:0}
table.wa-config td {padding:0px}
.wa-config .topbar {background:#ccc;height:22px;padding:8px 2px 1px 3px}
.wa-config .header {background:#01598d; color: #fff; padding:5px;font-size:120%}

div.help {padding:8px;white-space:pre}


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

.group {border:1px solid #c0c0c0;margin-bottom:6px;width:550px}
.groupTitle {height:20px;font-size:1.2em;background:#eee;color:#01598d;padding-left:3px}
.groupTitle .action {float:right;padding-right:4px}

.groupContent {padding-left:4px;margin-top:6px; margin-bottom: 4px}

td, th { padding: 3px 1em 3px 0; }
label {font-weight:bold; padding: 2px 4px 2px 0px}
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