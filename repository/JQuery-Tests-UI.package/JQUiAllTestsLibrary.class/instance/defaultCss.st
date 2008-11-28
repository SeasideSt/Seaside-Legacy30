styles
defaultCss
	^ super defaultCss,
	'.ui-effects-transfer {border:1px solid black;background:#ffffe0;opacity:.5;}
	#content .main .blueBox { background: #77f; text-align:center; height:100px;width:200px}
	#content .main .highlight { background:yellow}
	#content .main .blackBorder {border:5px solid black; opacity:.5; filter:Alpha(Opacity=50); font-weight:bold;font-size:150%}
	#content .main .outer { width: 104px; height: 104px; position: relative;float:left }
	#content .main .target {margin-left: 10px; width: 50px; height: 50px; position: relative; float:left;background-color: #ffa; border:1px solid black }
	#content .main .inner { width: 100px; height: 100px; background-color: #68bfef; border: 2px solid #0090df;text-align:center; float:left }
	#content .main .action {clear:both;padding-top:6px}
	#content .main .action a {padding-right:6px}
'