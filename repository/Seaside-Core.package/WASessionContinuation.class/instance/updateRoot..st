updating
updateRoot: aHtmlRoot
	self session updateRoot: aHtmlRoot.
	self root visiblePresentersDo: [ :each | each updateRoot: aHtmlRoot ]