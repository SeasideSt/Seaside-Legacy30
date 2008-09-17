processing
responseForContext: aRequestContext 
	lastAccess := Time totalSeconds.
	^ self incomingRequest: aRequestContext