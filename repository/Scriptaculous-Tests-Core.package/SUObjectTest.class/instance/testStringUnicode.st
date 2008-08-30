testing-convertion
testStringUnicode
	self assert: (String with: (Character value: 1024)) equals: '"\u0400"'.
	self assert: (String with: (Character value: 8364)) equals: '"\u20AC"'