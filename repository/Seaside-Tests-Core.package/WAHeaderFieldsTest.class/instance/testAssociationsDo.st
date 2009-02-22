testing-enumerating
testAssociationsDo
	| keys values |
	one at: 'foo' put: 1.
	two at: 'bar' put: 2.
	keys := OrderedCollection new.
	values := OrderedCollection new.
	merged associationsDo: [ :assoc | 
		keys add: assoc key.
		values add: assoc value ].
	self assert: keys asArray = #('foo' 'bar').
	self assert: values asArray = #(1 2)