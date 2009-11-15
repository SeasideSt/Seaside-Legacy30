testing
testCodecUtf8
	#('UTF-8' 'utf-8') do: [ :codecName |
		| codec |
		codec := GRCodec forEncoding: codecName.
		self assert: codec name = 'utf-8'.
		self assert: codec url name = 'utf-8'.
		self assert: (codec encode: self latin1String) = self utf8String.
		self assert: (codec url encode: self latin1String) = self utf8String.
		self assert: (codec decode: self utf8String) = self latin1String.
		self assert: (codec url decode: self utf8String) = self latin1String ]