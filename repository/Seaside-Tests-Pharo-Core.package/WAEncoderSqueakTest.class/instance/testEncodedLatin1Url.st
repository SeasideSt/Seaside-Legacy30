testing
testEncodedLatin1Url
	self
		assert: (String with: (Character codePoint: 233) with: (Character codePoint: 228))
		encoder: WAUrlEncoder
		gives: '%C3%A9%C3%A4'