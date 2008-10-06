testing
testMultiplePut
	| dictionary value |
	merger at: 'key' put: 'value'.
	merger at: 'key' put: 'value2'.
	merger at: 'key' put: #('value3' 'value4') asOrderedCollection.
	dictionary := merger dictionary.
	self assert: dictionary size = 1.
	value := dictionary at: 'key'.
	self assert: (value isKindOf: OrderedCollection).
	self assert: value size = 4.
	self assert: value first = 'value'.
	self assert: value second = 'value2'.
	self assert: value third = 'value3'.
	self assert: value fourth = 'value4'.