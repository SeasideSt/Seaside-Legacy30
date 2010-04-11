initialization
onCodecStream: aCodecStream socketStream: aSocketStream
	self initalizeOn: aCodecStream.
	codecStream := aCodecStream.
	socketStream := aSocketStream