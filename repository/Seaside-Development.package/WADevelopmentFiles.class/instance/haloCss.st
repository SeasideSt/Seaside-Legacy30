accessing-styles
haloCss
	^ '.halo {
	margin: 2px;
	border: 1px solid #aaa;
}

/* header */
.halo-header {
	overflow: hidden;
	padding: 2px;
	color: #444;
	background-color: #eee;
	border-bottom: 1px solid #aaa;
	font: 10pt Verdana, Arial, Helvetica, sans-serif;
}
.halo-header a {
	text-decoration: none;
}
.halo-header div {
	float: left;
}
.halo-header div.classnamehaloplugin,
.halo-header div.browserhaloplugin,
.halo-header div.inspectorplugin,
.halo-header div.styleshaloplugin {
	float: left;
	display: block;
	padding-right: 5px;
}
.halo-header div.browserhaloplugin, div.window-titlebar div.browserhaloplugin {
	background: url(codebrowser.png) no-repeat;
}
.halo-header div.inspectorplugin, div.window-titlebar div.inspectorplugin {
	background: url(inspector.png) no-repeat;
}
.halo-header div.styleshaloplugin, div.window-titlebar div.styleshaloplugin {
	background: url(styleeditor.png) no-repeat;
}
.halo-header div.browserhaloplugin a,
.halo-header div.inspectorplugin a,
.halo-header div.styleshaloplugin a {
	width: 16px;
	display: block;
	text-indent: -32000px;
	background-position: 0 50%;
	outline: none;
}
.halo-header div.modehaloplugin {
	float: right;
	display: block;
}
.halo-header div.modehaloplugin a {
	color: #444;
}
.halo-header div.modehaloplugin a:hover {
	color: #111;
}
.halo-header div.modehaloplugin a.active {
	font-weight: bold;
}
div.window-titlebar div.profilertoolplugin {
	background: url(profiler.png) no-repeat;
}
div.window-titlebar div.memorytoolplugin {
	background: url(memory.png) no-repeat;
}
div.window-titlebar div.configuretoolplugin {
	background: url(config.png) no-repeat;
}
div.window-titlebar div.deprecationtoolplugin {
	background: url(deprecated.png) no-repeat;
}

/* body */
.halo-body {
	clear: both;
	padding: 2px;
}

/* source */
.halo-source .tag-known {
	font-weight: bold;
	color: navy;
}
.halo-source .attribute-known {
	color: navy;
}
.halo-source .attribute-value {
	color: purple;
}
.halo-source .comment {
	font-style: italic;
	color: green;
}'