testing
testStringSpecial
	self assert: (String with: Character cr) equals: '"\r"'.
	self assert: (String with: Character lf) equals: '"\n"'.
	self assert: (String with: Character tab) equals: '"\t"'.

	self assert: (String with: (Character value: 0)) equals: '"\0"'.
	self assert: (String with: (Character value: 1)) equals: '"\x01"'.
	self assert: (String with: (Character value: 31)) equals: '"\x1f"'