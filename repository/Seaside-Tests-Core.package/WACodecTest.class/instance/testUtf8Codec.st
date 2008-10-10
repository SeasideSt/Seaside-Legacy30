testing
testUtf8Codec
	| codec |
	codec := SeasidePlatformSupport codecForEncoding: 'UTF-8'.
	self assert: codec notNil.
	
	self assert: (codec encode: 'Übèrstrîñgé') = 'ÃbÃ¨rstrÃ®Ã±gÃ©'.
	self assert: (codec encodeUrl: 'Übèrstrîñgé') = 'ÃbÃ¨rstrÃ®Ã±gÃ©'.
	self assert: (codec decode: 'ÃbÃ¨rstrÃ®Ã±gÃ©') = 'Übèrstrîñgé'.
	self assert: (codec decodeUrl: 'ÃbÃ¨rstrÃ®Ã±gÃ©') = 'Übèrstrîñgé'