testing-literals
testFalse
	self assert: (self parse: 'false') = false.
	self assert: (self parse: 'False') = 'False'