initialize-release
initialize
	| application |
	stream := SeasidePlatformSupport readWriteStream.
	status := 200.
	application := WACurrentContext application.
	contentType := application isNil
		ifFalse: [ application contentType ]
		ifTrue: [ self class defaultValueForContentType ]