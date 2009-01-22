testing
testLatin1Codec
	| codec |
	codec := WAPlatform current codecForEncoding: 'ISO-8859-1'.
	self assert: codec notNil.
	
	self assert: (codec encode: self latin1String) = self latin1String.
	self assert: (codec encodeUrl: self latin1String) = self latin1String.
	self assert: (codec decode: self latin1String) = self latin1String.
	self assert: (codec decodeUrl: self latin1String) = self latin1String