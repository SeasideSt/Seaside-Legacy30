testing-accessing
testRemoveKey
	dictionary at: '1' put: 'foo'.
	self assert: (dictionary removeKey: '1') = 'foo'.
	self should: [ dictionary removeKey: '1' ] raise: Error