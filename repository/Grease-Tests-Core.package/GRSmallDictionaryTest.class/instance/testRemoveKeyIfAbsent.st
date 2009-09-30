testing-accessing
testRemoveKeyIfAbsent
	dictionary at: '1' put: 'foo'.
	self assert: (dictionary removeKey: '1' ifAbsent: [ 'bar' ]) = 'foo'.
	self assert: (dictionary removeKey: '1' ifAbsent: [ 'bar' ]) = 'bar'