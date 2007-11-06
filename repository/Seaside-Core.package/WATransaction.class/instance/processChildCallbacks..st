forwarding
processChildCallbacks: aStream
	^ active
		ifTrue: [ super processChildCallbacks: aStream ]
		ifFalse: [ self session pageExpired ]