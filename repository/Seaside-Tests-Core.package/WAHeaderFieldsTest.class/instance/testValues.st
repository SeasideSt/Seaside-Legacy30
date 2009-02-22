testing-enumerating
testValues
	one at: 'foo' put: 1.
	two at: 'bar' put: 2.
	self assert: merged values asArray = #(1 2)