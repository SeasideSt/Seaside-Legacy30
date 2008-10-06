testing
testRetrieve
	self assert: (cache retrieve: key) isNil.
	key := cache store: 1.
	self assert: (cache retrieve: key) = 1