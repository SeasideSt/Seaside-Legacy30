initialize-release
initialize
	| session |
	stream := self readWriteStream.
	status := 200.
	session := WACurrentSession value.
	contentType := session isNil
		ifFalse: [ session contentType ]
		ifTrue: [ self class defaultValueForContentType ]