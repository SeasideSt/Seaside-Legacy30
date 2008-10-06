testing
testSingleMapping
	| dictionary |
	merger at: 'key' put: 'value'.
	merger at: 'key2' put: 'value2'.
	dictionary := merger dictionary.
	self assert: dictionary size = 2.
	self assert: (dictionary at: 'key') = 'value'.
	self assert: (dictionary at: 'key2') = 'value2'.