tests
testCodecLatin1Binary
	| codec encoder binary |
	codec := GRCodec forEncoding: 'ISO-8859-1'.
	binary := self latin1String asByteArray.
	encoder := codec encoderFor: (WriteStream on: String new).
	encoder binary.
	encoder nextPutAll: binary.
	self assert: encoder contents = binary asString