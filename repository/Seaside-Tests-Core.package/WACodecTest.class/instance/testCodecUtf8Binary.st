testing
testCodecUtf8Binary
	| codec binary encoder |
	codec := WACodec forEncoding: 'utf-8'.
	binary := self utf8String asByteArray.
	encoder := codec encoderFor: (WriteStream on: String new).
	encoder binary.
	encoder nextPutAll: binary.
	self assert: encoder contents = binary asString