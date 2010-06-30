resources
welcomeCss
	^ '	
body {
	font-family:"Lucida Grande","Bitstream Vera Sans","Verdana";
	font-size:13px;
	margin-top: 0px;
	margin-bottom: 0px;
	color: #2a2a2a;
	background: url("http://localhost:8080/files/WAWelcomeFiles/background.jpg") repeat-y fixed center top #FFFFFF;
}

div.clear {
	clear: both;
}

a {
	color:#008AFF;
	text-decoration:none;
}

a.goback {
	color: #888888;
	font-size: 10px;
}

.container  {
	/* auto  margin positioning:*/
	/*margin-left: auto;
	margin-right:auto; */
	/* end auto margin positioning */
	
	/* negative margin positioning */
	position: absolute;
	left: 50%;
	margin-left: -450px;
	/* end negative margin positioning */
	
	margin-top: 0px;
	width: 900px;
	/*border-right: 1px solid #cccccc;
	border-left: 1px solid #cccccc;*/
}

.sidebar  {
	width:200px;
	/*background-color: #E5F2FC;*/
	float: right;
	padding:25px;
	padding-top: 5px;
	/*border-left: 1px solid #CCCCCC;
	border-bottom: 1px solid #CCCCCC;*/
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
	margin-right: 260px;
	padding: 20px;
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

form.config input.checkbox { margin-right: 1em; }
form.config label { vertical-align: top; }
.container .buttons { text-align: center; margin-top: 2em; }
.container .buttons a { margin: 0 1em; }

/* This makes the URL dialog at least useable when the user has no internet connection
to get the JQuery CSS files. */
.dialog {
	background-color: #FFFFFF;
	padding: 10px;
	border: 1px solid black;
	-moz-border-radius:4px 4px 4px 4px;
}
'