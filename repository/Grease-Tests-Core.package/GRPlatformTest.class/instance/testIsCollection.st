testing
testIsCollection
	self deny: Object new isCollection.
	self assert: #(1 2 3 4) isCollection.
	self assert: #(1 2 3 4) asOrderedCollection isCollection.
	self assert: Dictionary new isCollection.