testing
testWriteString
	| stream codecStream |
	stream := WriteStream on: String new.
	codecStream := WANullCodec new encoderFor: stream.
	codecStream
		nextPut: $A;
		nextPutAll: 'BC';
		nextPut: 68;
		nextPutAll: #(69 70) asByteArray.
	self assert: codecStream contents = 'ABCDEF'.