updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	(WAVisiblePresenterGuide client:
		(WAUpdateRootVisitor root: aHtmlRoot))
		start: self root