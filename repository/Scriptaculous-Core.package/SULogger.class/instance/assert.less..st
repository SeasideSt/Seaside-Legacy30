assertions
assert: anObject less: anotherObject
	self call: 'assertLess' arguments: (Array with: anObject with: anotherObject)