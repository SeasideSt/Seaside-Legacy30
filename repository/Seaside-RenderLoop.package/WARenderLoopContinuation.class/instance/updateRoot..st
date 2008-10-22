updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	WAUpdateRootVisitor new
		root: aHtmlRoot;
		start: self root