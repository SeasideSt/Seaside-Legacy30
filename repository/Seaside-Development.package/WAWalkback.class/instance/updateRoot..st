updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot title: self exception description.
	aHtmlRoot bodyAttributes addClass: 'walkback'.
	WAHandlerEditorFiles default updateRoot: aHtmlRoot