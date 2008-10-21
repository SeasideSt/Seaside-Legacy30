rendering
renderBodyOn: html
	html div class: 'body'; with: [ 
		self renderTestsOn: html.
		self renderContentsOn: html.
		html div style: 'clear: both' ]