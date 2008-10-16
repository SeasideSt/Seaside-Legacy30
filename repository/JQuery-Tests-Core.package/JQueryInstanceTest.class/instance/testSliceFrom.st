testing-filtering
testSliceFrom
	self
		assert: ((self jQuery: 'div') sliceFrom: 0)
		equals: self name , '("div").slice(0)'