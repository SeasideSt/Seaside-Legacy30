updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	self theme updateRoot: aHtmlRoot.
	JQUiAllTestsLibrary default 
		updateRoot: aHtmlRoot