updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	WAVisiblePresenterGuide new
		client: (WAUpdateRootVisitor new root: aHtmlRoot; yourself);
		start: self root