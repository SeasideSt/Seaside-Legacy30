testing
testRemove
	key := cache store: 1.
	self assert: (cache remove: 1) = 1.
	self assert: (cache at: key) isNil.
	self assert: (cache keyFor: 1) isNil