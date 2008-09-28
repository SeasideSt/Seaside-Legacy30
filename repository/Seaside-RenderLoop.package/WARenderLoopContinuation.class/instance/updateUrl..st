updating
updateUrl: anUrl
	super updateUrl: anUrl.
	self root visiblePresentersDo: [ :each | each updateUrl: anUrl ]