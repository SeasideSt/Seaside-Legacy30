testing
testSqueakCodecLatin1
	"tests the codec for 'lating-1' and #converter"
	#('iso-8859-1' 'ISO-8859-1' 'latin-1') do: [ :each |
		| codec |
		codec := WACodec forEncoding: each.
		
		self assert: codec converter notNil.
		self assert: codec name = each.
		self assert: codec url converter notNil.
		self assert: codec url name = each.
		
		self assert: (codec encode: self latin1String) = self latin1String.
		self assert: (codec url encode: self latin1String) = self latin1String.
		self assert: (codec decode: self latin1String) = self latin1String.
		self assert: (codec url decode: self latin1String) = self latin1String ]