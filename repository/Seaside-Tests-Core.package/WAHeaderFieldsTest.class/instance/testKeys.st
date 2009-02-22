testing-enumerating
testKeys
	one at: 'foo' put: 1.
	two at: 'bar' put: 2.
	self assert: merged keys asArray = #('foo' 'bar')