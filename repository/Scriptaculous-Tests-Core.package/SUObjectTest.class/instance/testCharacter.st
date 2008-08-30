testing-convertion
testCharacter
	self assert: (Character value: 0) equals: '"\0"'.
	self assert: Character lf equals: '"\n"'.
	self assert: $a equals: '"a"'