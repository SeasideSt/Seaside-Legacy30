tests
testWithAll
	| array |
	array := (Array with: '1' -> 'foo' with: '2' -> 'bar' with: '1' -> 'baz').
	collection := self collectionClass withAll: array.
	self assertAssociations:
		(self allowsDuplicateKeys
			ifFalse: [ Array with: '1' -> 'baz' with: '2' -> 'bar' ]
			ifTrue: [ array ])
