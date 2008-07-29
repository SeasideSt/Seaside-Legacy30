expiring
defaultTimeoutSeconds
	^ self sessionExpirySeconds isNil
		ifFalse: [ self sessionExpirySeconds ]
		ifTrue: [ super defaultTimeoutSeconds ]