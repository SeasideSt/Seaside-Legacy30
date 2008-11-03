public
responseForContext: aRequestContext 
	^ (aRequestContext request fields includesKey: self handlerField) 
		ifTrue: [ self handleKeyRequest: aRequestContext ]
		ifFalse: [ self handleDefaultRequest: aRequestContext ]