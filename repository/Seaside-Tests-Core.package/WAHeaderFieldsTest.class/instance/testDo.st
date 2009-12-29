testing-enumerating
testDo
	| result |
	one at: 'foo' put: 1.
	two at: 'bar' put: 2.
	result := OrderedCollection new.
	merged do: [ :each | result add: each ].
	self assert: result asArray = #(1 2)