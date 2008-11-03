convenience
activeComponent
	self visiblePresentersDo: [ :each | each isDecoration ifFalse: [ ^ each ] ]