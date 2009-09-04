testing
testGenericCodecMacRoman
	| codec |
	codec := WACodec forEncoding: 'mac-roman'.
	
	self assert: (codec isKindOf: WAGenericCodec).
	self assert: codec name = 'mac-roman'.
	self assert: codec url name = 'utf-8'.
	self assert: (codec url isKindOf: WAUtf8Codec).
	
	self assert: (codec encode: self latin1String) = self macromanString.
	self assert: (codec url encode: self latin1String) = self utf8String.
	self assert: (codec decode: self macromanString) = self latin1String.
	self assert: (codec url decode: self utf8String) = self latin1String