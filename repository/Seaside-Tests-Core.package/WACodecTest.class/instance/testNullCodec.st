testing
testNullCodec
	| codec string |
	codec := SeasidePlatformSupport codecForEncoding: nil.
	string := 'Übèrstrîñgé'.
	self assert: codec notNil.
	self assert: codec class = WANullCodec.
	
	self assert: (codec encode: string) == string.
	self assert: (codec encodeUrl: string) == string.
	self assert: (codec decode: string) == string.
	self assert: (codec decodeUrl: string) == string.