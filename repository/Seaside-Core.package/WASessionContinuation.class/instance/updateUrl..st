updating
updateUrl: anUrl
	self session updateUrl: anUrl.
	self root visiblePresentersDo: [ :each | each updateUrl: anUrl ]