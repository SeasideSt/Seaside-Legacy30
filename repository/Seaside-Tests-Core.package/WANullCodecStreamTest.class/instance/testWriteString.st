testing
testWriteString
	| stream codecStream |
	stream := String new writeStream.
	codecStream := WANullCodec new encoderFor: stream.
	codecStream
		nextPut: $A;
		nextPutAll: 'BC';
		nextPut: 68;
		nextPutAll: #(69 70) asByteArray.
	self assert: codecStream contents = 'ABCDEF'.