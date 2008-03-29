public
handleRequest: aRequest
	^ self pushSelfDuring: [
		(aRequest fields includesKey: self handlerField)
			ifTrue: [ self handleKeyRequest: aRequest ]
			ifFalse: [ self handleDefaultRequest: aRequest ] ]