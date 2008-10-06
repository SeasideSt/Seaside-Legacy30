testing
testPutOrderedCollection
	| dictionary |
	merger at: 'key' put: #('value') asOrderedCollection.
	dictionary := merger dictionary.
	self assert: dictionary size = 1.
	self assert: (dictionary at: 'key') = 'value'.