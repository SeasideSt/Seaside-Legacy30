initialize-release
initialize
	| application |
	super initialize.
	stream := SeasidePlatformSupport readWriteStream.
	status := 200.
	application := WACurrentRequestContext application.
	contentType := application isNil 
		ifFalse: [ application contentType ]
		ifTrue: [ self class defaultValueForContentType ]