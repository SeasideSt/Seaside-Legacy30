private
handleFiltered: aRequestContext key: aString
	| handler |
	handler := self cache at: aString.
	^ handler notNil
		ifTrue: [handler handle: aRequestContext]
		ifFalse: [self handleExpiredRequest: aRequestContext]