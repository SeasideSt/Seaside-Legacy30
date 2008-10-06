testing
testKeyFor
	key := cache store: 1.
	self assert: (cache keyFor: 1) = key.
	self assert: (cache keyFor: 2) isNil