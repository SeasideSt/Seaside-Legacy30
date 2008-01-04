styles
tabPanelCss
	"Based on: http://www.kalsey.com/tools/csstabs/"

	^ '.tabPanel ul.head {
	margin: 0;
	padding-left: 1em;
	padding-bottom: 2em;
	border-bottom: 1px solid #ccc;
}
.tabPanel ul.head li	{
	margin: 0;
	padding: 0;
	display: inline;
	list-style-type: none;
}
.tabPanel ul.head a:link, 
.tabPanel ul.head a:visited {
	float: left;
	color: #444;
	outline: none;
	line-height: 1.5em;
	margin-right: 1em;
	background: #eee;
	text-decoration: none;
	border: 1px solid #ccc;
	padding: 0.2em 1em 0.2em 1em;
}
.tabPanel ul.head a:link.active, 
.tabPanel ul.head a:visited.active {
	color: #000;
	background: #fff;
	border-bottom: 1px solid #fff;
}
.tabPanel ul.head a:hover {
	background-color: #fff;
}'