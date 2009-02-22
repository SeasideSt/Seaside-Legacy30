testing-testing
testIsEmpty
	self assert: merged isEmpty.
	two at: 'bar' put: 2.
	self deny: merged isEmpty.
	one at: 'foo' put: 1.
	self deny: merged isEmpty