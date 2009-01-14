processing
handleFiltered: aRequestContext 
	self isClosed 
		ifFalse: [ super handleFiltered: aRequestContext ]
		ifTrue: [ WAResponseFactory pageExpiredForContext: aRequestContext ]