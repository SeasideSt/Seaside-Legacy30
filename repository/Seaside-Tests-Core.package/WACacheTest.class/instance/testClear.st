testing
testClear
	key := cache store: 1.
	cache clear.
	self assert: (cache at: key) isNil.
	self assert: (cache keyFor: 1) isNil