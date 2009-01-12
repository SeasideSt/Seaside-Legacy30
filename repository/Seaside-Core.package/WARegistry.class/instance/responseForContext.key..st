private
responseForContext: aRequestContext key: aString
	| handler |
	handler := self cache at: aString.
	^ handler notNil
		ifTrue: [handler handleRequest: aRequestContext]
		ifFalse: [self handleExpiredRequest: aRequestContext]