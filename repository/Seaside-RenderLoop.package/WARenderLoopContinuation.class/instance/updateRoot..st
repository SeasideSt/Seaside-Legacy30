updating
updateRoot: aHtmlRoot
	aHtmlRoot bodyAttributes at: 'onload' append: 'onLoad()' separator: ';'.
	super updateRoot: aHtmlRoot.
	(WAVisiblePresenterGuide client:
		(WAUpdateRootVisitor root: aHtmlRoot))
		start: self root