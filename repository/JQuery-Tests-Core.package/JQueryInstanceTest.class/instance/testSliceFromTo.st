testing-filtering
testSliceFromTo
	self
		assert: ((self jQuery: 'div') sliceFrom: 2 to: 5)
		equals: self name , '("div").slice(2,5)'.
	self
		assert: ((self jQuery: 'div') sliceFrom: -1 to: -4)
		equals: self name , '("div").slice(-1,-4)'