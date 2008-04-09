processing
pushSelfDuring: aBlock 
	^ WARequestContext 
		pushRequestHandler: self
		while: aBlock