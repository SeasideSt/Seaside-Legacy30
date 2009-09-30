testing-enumerating
testValuesDo
	| result |
	result := OrderedCollection new.
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	dictionary valuesDo: [ :each | result add: each ].
	self assert: result asArray = #( 'foo' 'bar' )