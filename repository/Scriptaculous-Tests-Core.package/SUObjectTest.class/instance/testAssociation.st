testing-convertion
testAssociation
	self assert: ('a' -> 'b') equals: '''a=b'''.
	self assert: ('a' -> 1) equals: '''a=''+1'.
	self assert: ('a' -> nil) equals: '''a'''