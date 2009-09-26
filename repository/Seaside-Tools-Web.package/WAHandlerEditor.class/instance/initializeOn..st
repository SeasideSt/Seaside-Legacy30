initialization
initializeOn: aHandler
	self initialize.
	handler := aHandler.
	filterEditor := WAFilterAttributeEditor new handler: handler; group: #filters; parent: self; yourself