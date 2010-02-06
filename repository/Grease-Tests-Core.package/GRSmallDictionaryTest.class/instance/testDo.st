testing-enumerating
testDo
	| result |
	result := OrderedCollection new.
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	dictionary do: [ :each | result add: each ].
	self assert: result asArray = #( 'foo' 'bar' )