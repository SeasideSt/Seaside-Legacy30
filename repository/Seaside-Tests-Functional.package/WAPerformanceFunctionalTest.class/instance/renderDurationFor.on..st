rendering
renderDurationFor: aBlock  on: html
	| time |
	time := Time millisecondsToRun: [
			html div
				style: 'position:relative;height:60px;width:50%;border: 1px solid #ccc;overflow:hidden;float:left';
				with: [aBlock value: html]].
	duration := duration + time.
	html
		div style: 'float:left;padding:4px';
		with: [html text: time asString, ' ms'.
				html break.
				html div style: 'position:relative;border: 1px solid #ccc;background:#5f5;height:14px;width:' , time asString, 'px']	