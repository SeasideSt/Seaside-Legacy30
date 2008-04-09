initialize-release
initialize
	| application |
	stream := SeasidePlatformSupport readWriteStream.
	status := 200.
	application := WACurrentRequestContext application.
	contentType := application isNil 
		ifFalse: [ application contentType ]
		ifTrue: [ self class defaultValueForContentType ]