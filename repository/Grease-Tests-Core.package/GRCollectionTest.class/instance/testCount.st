testing
testCount
	self assert: (#(1 2 3) count: [ :each | each odd ]) = 2