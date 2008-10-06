testing
testRemoveKey
	key := cache store: 1.
	self assert: (cache removeKey: key) = 1.
	self assert: (cache at: key) isNil.
	self assert: (cache keyFor: 1) isNil