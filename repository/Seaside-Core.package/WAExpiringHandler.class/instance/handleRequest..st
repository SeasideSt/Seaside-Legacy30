processing
handleRequest: aRequest
	lastAccess := Time totalSeconds.
	^self pushSelfDuring: [ self incomingRequest: aRequest ]