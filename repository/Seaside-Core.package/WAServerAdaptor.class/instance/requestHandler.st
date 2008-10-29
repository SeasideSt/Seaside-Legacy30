accessing
requestHandler
	^ requestHandler ifNil: [ WADispatcher default ]