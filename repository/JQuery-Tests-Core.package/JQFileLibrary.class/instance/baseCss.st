uploaded
baseCss
	^ '/* Site
   -------------------------------- */

html {
	overflow-y: scroll;
	background: #5f5f5f url(html_bg.png) repeat-x scroll;
}

body {
	margin: 0;
	padding: 0 0 20px;
	background: transparent url(body_bg.jpg) no-repeat center top;
	min-height: 100%;
	font-family: "Arial", "Helvetica", "Verdana", "sans-serif";
}

#wrapper {
	margin: 0 auto;
	width: 956px;
	position: relative;
}

#banner {
	height: 125px;
}

/* Logo
   -------------------------------- */

h1.logo {
	position: absolute;
	top: 55px;
	left: 28px;
	margin: 0;
}

h1.logo,
h1.logo a {
	width: 235px;
	height: 55px;
}

h1.logo a {
	display: block;
	background: url(logo.gif) no-repeat;
}

h1.logo a span {
	display: none;
}

/* Navigation
   -------------------------------- */

#navigation {
	height: 41px;
	float: left;
	position: absolute;
	top: 62px;
	right: 0px;
}

#navigation .left {
	float: left;
	width: 5px;
	height: 41px;
	/* background: url(''../images/navigation.png'') no-repeat left top; */
	background: url(''../images/navigation_l.png'') no-repeat left top;
}

#ie6 #navigation .left {
	background: transparent none;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=''../images/navigation_l.png'', sizingMethod=''scale'');
	zoom: 1;
}

#navigation .right {
	float: left;
	width: 3px;
	height: 41px;
	background: url(''../images/navigation.png'') no-repeat right top;
}

#navigation ul,
#navigation ul li {
	float: left;
	list-style-type: none;
	margin: 0;
	padding: 0;
	font-size: 13px;
	line-height: 38px;
}

#navigation ul {
	height: 41px;
	background: url(''../images/navigation.png'') repeat-x 0 -41px;
}

#navigation ul li a {
	float: left;
	display: block;
	height: 41px;
	padding: 0 18px;
	color: #ccc;
	text-decoration: none;
	background: url(''../images/navigation_s.png'') no-repeat right top;
}

#navigation ul li.selected a {
	color: #fff;
}

#navigation ul li.last a{
	background-image: none;
}

#navigation ul li a:hover {
	color: #fff;
}


/* Content
   -------------------------------- */

#content-wrapper {
	background: #FFF url(''../images/content_bg.png'') repeat-y 0 0;
}

#content {
	background: url(''../images/content_body_bg.png'') no-repeat 0 13px;
	zoom: 1;
}

.content-top {
	font-size: 1px;
	height: 13px;
	background: url(''../images/content_top_bg.png'');
}

.content {
	padding: 0 3px 0 3px;
	overflow: hidden;
}

#content .content {
	min-height: 380px;
	background: url(''../images/dot.png'') repeat-y 203px 0;
}

#home #content .content,
#download #content .content,
#demos #content .content {
	background: none;
}

#ie6 #content .content {
	height: 380px;
	overflow-y: visible;
}

/* Layout */

.content-head {
	height: 74px;
	border-bottom: 1px solid #ccc;
	background-color: #fff;
}

.content-head h2 {
	float: left;
	margin: 0;
	padding: 20px 0 20px 24px;
	color: #ff9c08;
	font: normal 29px/30px "Lucida Grande", "Arial", "Helvetica", "Verdana", "sans-serif";
	letter-spacing: .5px;
}

.content-head h2 span {
	padding-right: 16px;
	border-right: 1px solid #ccc;
}

.content-head p {
	margin: 0;
	padding: 28px 0 0 12px;
	float: left;
	font: normal 15px "Lucida Grande", "Arial", "Helvetica", "Verdana", "sans-serif";
	letter-spacing: .5px;
}

/* Footer
   -------------------------------- */

#footer {
	height: 45px;
	padding: 10px 0;
	position: relative;
}

#footer .inner {
	position: relative;
	z-index: 2;
}

#ie6 #footer .inner {
	zoom: 1;
}

#footer .bg {
	background: url(''../images/footer_bg.png'') no-repeat left top;
	width: 100%;
	height: 65px;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1;
}

#ie6 #footer .bg {
	background: transparent none;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=''../images/footer_bg.png'', sizingMethod=''scale'');
	zoom: 1;
}

#footer p {
	margin: 0;
	padding: 0;
	color: #5e5e5e;
	font: normal 9px ''Arial'', ''Helvetica'', sans-serif;
	text-transform: uppercase;
}

#footer p a {
	color: #bbb;
}

#footer span.first {
	display: block;
	float: left;
	padding: 6px 0 0 16px;
}

#footer .block {
	display: block;
	float: left;
}

#footer .block span,
#footer span.empty {
	display: none;
}

#footer .liferay {
	margin: 3px 22px 0px 3px;
	background: url(''../images/icon_liferay.gif'');
	width: 98px;
	height: 22px;
	border: 0;
}

#footer .adobe {
	margin: 2px 0 0 0;
	background: url(''../images/icon_adobe.png'');
	width: 28px;
	height: 28px;
}'