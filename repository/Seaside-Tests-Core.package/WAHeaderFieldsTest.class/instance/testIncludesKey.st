testing-testing
testIncludesKey
	one at: 'foo' put: 1.
	two at: 'bar' put: 2.
	self assert: (merged includesKey: 'foo').
	self assert: (merged includesKey: 'bar').
	self deny: (merged includesKey: 'zork').