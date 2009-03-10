rendering
renderContentOn: html 
	duration := 0.
	self renderExplanationOn: html.
	self renderAnchorsOn: html.
	self renderScriptOn: html.
	self renderTableOn: html.
	self renderCallbackOn: html.
	self renderTableOn: html.
	self renderFormOn: html.
	self renderIdTestOn: html.
	self renderTextOn: html.
	self renderHtmlTextOn: html.
	self renderHtmlOn: html.
	self renderBreakOn: html.
	
	html div style: 'clear:both'.
	html heading level: 2; with: 'Performance Index: ', duration asString