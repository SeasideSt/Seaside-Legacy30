processing
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot bodyAttributes
		at: 'onkeydown'
		put: 'onKeyDown(event)'