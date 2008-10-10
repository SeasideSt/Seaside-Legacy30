testing
testUtf16Codec
	| codec |
	codec := SeasidePlatformSupport codecForEncoding: 'UTF-16'.
	self assert: codec notNil.
	
	self assert: (codec encode: self latin1String) = self utf16String.
	self assert: (codec encodeUrl: self latin1String) = 'ÃbÃ¨rstrÃ®Ã±gÃ©'.
	self assert: (codec decode: self utf16String) = self latin1String.
	self assert: (codec decodeUrl: 'ÃbÃ¨rstrÃ®Ã±gÃ©') = self latin1String