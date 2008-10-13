assertions
assert: anObject greater: anotherObject
	self call: 'assertGreater' arguments: (Array with: anObject with: anotherObject)