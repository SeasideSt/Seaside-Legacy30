testing
testGenericCodecUtf16be
	| codec bom |
	codec := WACodec forEncoding: 'utf-16'.
	self assert: (codec isKindOf: WAGenericCodec).
	bom := #(254 255) asByteArray asString.
	
	self assert: codec name = 'utf-16'.
	self assert: codec url name = 'utf-8'.
	self assert: (codec url isKindOf: WAUtf8Codec).
	
	self assert: (codec encode: self latin1String) = self utf16beString.
	self assert: (codec url encode: self latin1String) = self utf8String.
	self assert: (codec decode: self utf16beString) = self latin1String.
	self assert: (codec decode: bom, self utf16beString) = self latin1String.
	self assert: (codec url decode: self utf8String) = self latin1String