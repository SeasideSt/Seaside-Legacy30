testing-enumerating
testKeysDo
	| result |
	result := OrderedCollection new.
	dictionary at: '1' put: 'foo'; at: '2' put: 'bar'.
	dictionary keysDo: [ :each | result add: each ].
	self assert: result asArray = #( '1' '2' )