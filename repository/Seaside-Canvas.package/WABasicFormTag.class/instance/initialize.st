initialization
initialize
	| entryPoint |
	super initialize.
	entryPoint := self requestContext entryPoint.
	entryPoint isNil
		ifTrue: [ self acceptCharset: self defaultUrlCharset ]
		ifFalse: [ self acceptCharset: entryPoint charSet ]