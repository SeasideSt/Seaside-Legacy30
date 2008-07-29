expiring
defaultTimeoutSeconds
	^ (self application isNil or: [ self application sessionExpirySeconds isNil ])
		ifFalse: [ self application sessionExpirySeconds ]
		ifTrue: [ super defaultTimeoutSeconds ]