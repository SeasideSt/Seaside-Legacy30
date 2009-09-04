initialization
initialize
	| application |
	super initialize.
	application := self application.
	application isNil
		ifTrue: [self acceptCharset: self defaultUrlCharset]
		ifFalse: [self acceptCharset: application charSet]