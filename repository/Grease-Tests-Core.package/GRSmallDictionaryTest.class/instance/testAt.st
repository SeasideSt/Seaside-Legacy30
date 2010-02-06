testing-accessing
testAt
	self should: [ dictionary at: '1' ] raise: Error.
	dictionary at: '1' put: 'foo'.
	self assert: (dictionary at: '1') = 'foo'