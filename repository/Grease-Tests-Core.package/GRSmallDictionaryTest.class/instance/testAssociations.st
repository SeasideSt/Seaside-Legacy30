testing-enumerating
testAssociations
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	self assert: dictionary associations = (Array with: '1' -> 'foo' with: '2' -> 'bar')