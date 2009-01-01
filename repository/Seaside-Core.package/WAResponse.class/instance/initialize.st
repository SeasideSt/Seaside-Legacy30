initialization
initialize
	| application |
	super initialize.
	stream := SeasidePlatformSupport readWriteStream.
	status := 200.
	application := [ self application ]
		on: WARequestContextRequest
		do: [ :error | nil ].
	contentType := application isNil 
		ifFalse: [ application contentType ]
		ifTrue: [ self class defaultValueForContentType ]