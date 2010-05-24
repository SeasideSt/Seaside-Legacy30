tests
testIncludesUnsafeXmlCharacter
	'"<&' do: [ :each |
		self assert: (self platform includesUnsafeXmlCharacter: (String with: each)).
		self assert: (self platform includesUnsafeXmlCharacter: 'a', (String with: each)).
		self assert: (self platform includesUnsafeXmlCharacter: (String with: each), 'a') ].
	
	"just make sure the method doesn't blow up on empty strings"
	self platform includesUnsafeXmlCharacter: ''.