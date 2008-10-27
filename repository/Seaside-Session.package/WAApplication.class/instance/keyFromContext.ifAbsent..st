request handling
keyFromContext: aRequestContext ifAbsent: aBlock
	| cookie |
	^ super
		keyFromContext: aRequestContext
		ifAbsent: [
			cookie := self sessionCookieFor: aRequestContext request.
			cookie isNil
				ifFalse: [ cookie value ]
				ifTrue: aBlock ]