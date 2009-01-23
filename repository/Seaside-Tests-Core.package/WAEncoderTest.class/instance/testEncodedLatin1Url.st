testing
testEncodedLatin1Url
	self
		assert: (String with: (Character value: 233) with: (Character value: 228))
		encoder: WAUrlEncoder
		gives: '%c3%a9%c3%a4'