testing
testNullCodec
	| codec readStream writeStream |
	codec := WANullCodec new.
	readStream := self latin1String readStream.
	writeStream := WriteStream on: String new.

	self assert: (codec encoderFor: writeStream) == writeStream.
	self assert: (codec url encoderFor: writeStream) == writeStream.
	self assert: (codec decoderFor: readStream) == readStream.
	self assert: (codec url decoderFor: readStream) == readStream.
	
	(Array with: self latin1String with: self utf8String with: self utf16String with: self macromanString) do: [ :string |	
		self assert: (codec encode: string) == string.
		self assert: (codec url encode: string) == string.
		self assert: (codec decode: string) == string.
		self assert: (codec url decode: string) == string ]