initialization
initialize
	| handler |
	super initialize.
	handler := self requestContext handler.
	handler isNil
		ifTrue: [ self acceptCharset: self defaultUrlCharset ]
		ifFalse: [ self acceptCharset: handler charSet ]