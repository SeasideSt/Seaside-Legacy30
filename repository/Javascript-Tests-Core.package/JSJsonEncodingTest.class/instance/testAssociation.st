tests
testAssociation
	self assert: ('a' -> 'b') equals: '"a":"b"'.
	self assert: ('a' -> 1) equals: '"a":1'.
	self assert: ('a' -> nil) equals: '"a":null'.
	
	self assert: ('' -> 1) equals: '"":1'.
	self assert: (' ' -> 2) equals: '" ":2'.
	self assert: ('1a' -> 3) equals: '"1a":3'.
	self assert: ('a ' -> 4) equals: '"a ":4'