resources
welcomeCss
	^ '
body {
	font-family:"Lucida Grande","Bitstream Vera Sans","Verdana";
	font-size:13px;
}

label, .fs120 {font-size:120%}

a {
color:#008AFF;
text-decoration:none;
}

.container  {
margin-left: auto;
margin-right:auto;
margin-top: 10px;
width: 1000px;
}

.sidebar  {
width:200px;
min-height:610px;
background-color:#fcfbea;
float: right;
padding:20px;
padding-top:10px;
border: 1px solid #cccccc
}

.sidebar li {
list-style-type: none;
}	
	
.sidebar  h3 {
border-bottom: 1px solid #cccccc;
font-size: 150%;
margin-top: 25px;
padding-bottom: 10px;
}

.sidebar ul {
margin-left: 0;
padding-left: 0;
}

.sidebar li {
margin-bottom: 5px;
}

.content  {
border: 1px solid #aaaaaa;
margin-right: 250px;
padding: 20px;
min-height:600px;
}

.header {
background-image: url("seasidestar.png");
background-position: left top;
background-repeat: no-repeat;
height: 64px;
}

.welcome {
	font-size: 28px;
	margin: 0;
}

.welcome, .congrats, .getting-started {
	padding-left: 75px;
	padding-right: 30px;
}

.congrats {
	color: #888888;
	font-size: 16px;
	font-weight: normal;
	margin: 0;
}

.getting-started, .back-form {
	border-top: 1px solid #cccccc;
	margin-top: 25px;
	padding-top: 15px;
}

.getting-started h1 {
	font-size: 150%;
	margin: 0;
}

.getting-started h2 {
	color: #333333;
	font-size: 120%;
	font-weight: normal;
	margin: 0 0 25px;
}

.getting-started ol {
	margin-left: 0;
	padding-left: 0;
}

.getting-started li {
	color: #888888;
	font-size: 18px;
	margin-bottom: 25px;
}

.getting-started li h2 {
	color: #333333;
	font-size: 18px;
	font-weight: normal;
	morgin: 0;
}

.getting-started li p, .getting-started li form, .getting-started li ul li, .getting-started li h3 {
	color: #555555;
	font-size: 13px;
}

.getting-started li ul {
	padding-left:5pt
}

.getting-started li ul li {
	margin-bottom:0
}

.example {
	width: 630px;
	padding: 10px;
	background: #F9F9F9;
	border: 1px solid #93BDD5;
	border-radius:10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
}

.seasideExample {
	background-color: #FBFFFA;
	border: 1px solid #93BDD5;
	margin: 1em;
	padding: 1em;
}

pre.codeSample {
	margin: 2em;
}


form.config input.checkbox { width: 20px; height: 20px; margin-right: 1em; }
form.config label { vertical-align: top; }
.container .buttons { text-align: center; margin-top: 2em; }
.container .buttons a { margin: 0 1em; }
'