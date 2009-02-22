testing
testKeyNotFound
	self assert: (one at: 'foo') isNil.
	self assert: (two at: 'foo') isNil.
	self assert: (merged at: 'foo') isNil