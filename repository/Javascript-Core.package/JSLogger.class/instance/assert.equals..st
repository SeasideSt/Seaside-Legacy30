assertions
assert: anObject equals: anotherObject
	self call: 'assertEquals' arguments: (Array with: anObject with: anotherObject)