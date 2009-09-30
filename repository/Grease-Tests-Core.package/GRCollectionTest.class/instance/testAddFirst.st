testing
testAddFirst
	| strings |
	strings := #('b' 'c' 'd') asOrderedCollection.
	strings addFirst: 'a'.
	self assert: strings = (OrderedCollection new
		add: 'a';
		add: 'b';
		add: 'c';
		add: 'd';
		yourself)