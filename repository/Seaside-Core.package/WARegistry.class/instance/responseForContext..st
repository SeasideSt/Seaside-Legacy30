processing
responseForContext: aRequestContext 
	| key |
	key := self
		keyFromContext: aRequestContext
		ifAbsent: [ ^ self handleDefaultRequest: aRequestContext ].
		
	^ self responseForContext: aRequestContext key: key