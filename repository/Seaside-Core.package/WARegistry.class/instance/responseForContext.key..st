private
responseForContext: aRequestContext key: aString
	| key handler |
	key := WAExternalID fromString: aString.
	handler := self cache at: key.
	^ handler notNil
		ifTrue: [handler handleRequest: aRequestContext]
		ifFalse: [self handleExpiredRequest: aRequestContext]