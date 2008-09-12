convenience
activeComponent
	self visiblePresentersDo: [:ea | ea isDecoration ifFalse: [^ ea]]