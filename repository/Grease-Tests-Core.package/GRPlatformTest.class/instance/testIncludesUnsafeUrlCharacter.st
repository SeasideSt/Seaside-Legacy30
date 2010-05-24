tests
testIncludesUnsafeUrlCharacter
	| unsafeCharacters |
	unsafeCharacters := ((0 to: 127)
		collect: [ :each | Character codePoint: each ])
		reject: [ :each | 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~' includes: each ].
	
	unsafeCharacters do: [ :each |
		self assert: (self platform includesUnsafeUrlCharacter: (String with: each)).
		self assert: (self platform includesUnsafeUrlCharacter: 'a', (String with: each)).
		self assert: (self platform includesUnsafeUrlCharacter: (String with: each), 'a') ].
	
	"make sure the method does not blow up on empty strings"
	self platform includesUnsafeUrlCharacter: ''