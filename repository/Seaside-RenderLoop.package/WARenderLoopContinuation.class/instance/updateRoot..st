updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	self root visiblePresentersDo: [ :each | each updateRoot: aHtmlRoot ]