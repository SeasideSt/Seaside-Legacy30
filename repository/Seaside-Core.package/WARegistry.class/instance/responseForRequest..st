public
responseForRequest: aRequest
	^ (aRequest fields includesKey: self handlerField)
		ifTrue: [ self handleKeyRequest: aRequest ]
		ifFalse: [ self handleDefaultRequest: aRequest ]