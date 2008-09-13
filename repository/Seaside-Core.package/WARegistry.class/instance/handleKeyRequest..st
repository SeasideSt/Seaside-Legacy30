private
handleKeyRequest: aRequestContext
	| key handler keyString |
	"Under some circumstances, HTTP fields are collections of values"
	key :=	[keyString := aRequestContext request at: self handlerField.
			(keyString isString not and: [ keyString isSequenceable ])
				ifTrue: [keyString := keyString first].
			WAExternalID fromString: keyString] on: Error do: [:e | nil].
	handler := handlersByKey at: key ifAbsent: [nil].
	^ (handler notNil and: [handler isActive])
		ifTrue: [handler handleRequest: aRequestContext]
		ifFalse: [self handleExpiredRequest: aRequestContext]