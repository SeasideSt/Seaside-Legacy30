testing
testNullCodec
	| codec string readStream writeStream |
	codec := WANullCodec new.
	string := 'Übèrstrîñgé'.
	readStream := string readStream.
	writeStream := WriteStream on: String new.

	self assert: (codec encoderFor: writeStream) == writeStream.
	self assert: (codec url encoderFor: writeStream) == writeStream.
	self assert: (codec decoderFor: readStream) == readStream.
	self assert: (codec url decoderFor: readStream) == readStream.
		
	self assert: (codec encode: string) == string.
	self assert: (codec url encode: string) == string.
	self assert: (codec decode: string) == string.
	self assert: (codec url decode: string) == string