updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	self theme updateRoot: anHtmlRoot.
	JQUiAllTestsLibrary default 
		updateRoot: anHtmlRoot