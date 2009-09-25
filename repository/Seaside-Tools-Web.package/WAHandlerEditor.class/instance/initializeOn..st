initialization
initializeOn: aHandler
	self initialize.
	handler := aHandler.
	filterEditor := WAFilterAttributeEditor new configuration: handler filters; handler: handler; group: #filters; parent: self; yourself