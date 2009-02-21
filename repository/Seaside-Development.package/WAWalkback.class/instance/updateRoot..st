updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot title: self exceptionDescription.
	aHtmlRoot bodyAttributes addClass: 'walkback'.
	WAHandlerEditorFiles default updateRoot: aHtmlRoot