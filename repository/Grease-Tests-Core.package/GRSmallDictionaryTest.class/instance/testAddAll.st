tests-accessing
testAddAll
	| array result |
	array := (Array with: '1' -> 'foo' with: '2' -> 'bar' with: '1' -> 'baz').
	result := collection addAll: array.
	self assert: array == result.
	self assertAssociations:
		(self allowsDuplicateKeys
			ifFalse: [ Array with: '1' -> 'baz' with: '2' -> 'bar' ]
			ifTrue: [ array ])
