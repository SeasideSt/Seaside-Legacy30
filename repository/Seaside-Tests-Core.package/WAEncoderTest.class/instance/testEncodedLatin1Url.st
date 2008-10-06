testing
testEncodedLatin1Url
	self
		assert: (String with: (Character value: 233) with: (Character value: 228))
		encoder: WAUrlEncoder
		gives: '%C3%A9%C3%A4'