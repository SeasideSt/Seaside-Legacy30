updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot title: self exceptionDescription.
	aHtmlRoot bodyAttributes addClass: 'walkback'.
	WAToolFiles default updateRoot: aHtmlRoot