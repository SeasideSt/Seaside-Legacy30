assertions
assert: anObject notEquals: anotherObject
	self call: 'assertNotEquals' arguments: (Array with: anObject with: anotherObject)