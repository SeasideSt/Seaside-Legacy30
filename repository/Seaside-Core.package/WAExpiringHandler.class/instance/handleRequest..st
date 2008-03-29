processing
handleRequest: aRequest
	lastAccess := Time totalSeconds.
	^ self incomingRequest: aRequest