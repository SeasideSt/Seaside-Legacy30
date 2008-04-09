convenience
pushRequestHandler: aRequestHandler while: aBlock 
	^ WACurrentRequestContext value 
		pushRequestHandler: aRequestHandler
		while: aBlock