testing
testCodecUtf8Binary
	#('UTF-8' 'utf-8') do: [ :codecName |
		| codec binary encoder |
		codec := GRCodec forEncoding: codecName.
		binary := self utf8String asByteArray.
		encoder := codec encoderFor: (WriteStream on: String new).
		encoder binary.
		encoder nextPutAll: binary.
		self assert: encoder contents = binary asString ]