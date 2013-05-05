tests
testStringSpecial
	self assert: (String with: Character cr) equals: '"\r"'.
	self assert: (String with: Character lf) equals: '"\n"'.
	self assert: (String with: Character tab) equals: '"\t"'.

	self assert: (String with: (Character codePoint: 0)) equals: '"\u0000"'.
	self assert: (String with: (Character codePoint: 1)) equals: '"\u0001"'.
	self assert: (String with: (Character codePoint: 31)) equals: '"\u001f"'