assertions
assert: anObject notLess: anotherObject
	self call: 'assertNotLess' arguments: (Array with: anObject with: anotherObject)