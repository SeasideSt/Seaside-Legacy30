testing
testStop
	self 
		assert: (self target stop)
		equals: self name , '("div").stop()'