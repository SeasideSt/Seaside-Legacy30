initialization
initializeOn: aStream table: anArray
	super initializeOn: aStream table: anArray.
	
	codec := WACurrentRequestContext value isNil
		ifFalse: [ WACurrentRequestContext value codec ].
	codec isNil ifTrue: [ codec := WANullCodec new ].