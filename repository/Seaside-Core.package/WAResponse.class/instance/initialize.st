initialize-release
initialize
	| session |
	stream := SeasidePlatformSupport readWriteStream.
	status := 200.
	session := WACurrentContext session.
	contentType := session isNil
		ifFalse: [ session contentType ]
		ifTrue: [ self class defaultValueForContentType ]