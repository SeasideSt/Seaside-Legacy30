updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	updateRootBlock isNil
		ifFalse: [ updateRootBlock value: aHtmlRoot ]