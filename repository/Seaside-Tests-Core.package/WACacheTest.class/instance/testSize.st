testing
testSize
	self assert: cache size = 0.
	cache store: #a.
	self assert: cache size = 1.
	cache store: #b.
	self assert: cache size = 2.
	cache remove: #a.
	self assert: cache size = 1.