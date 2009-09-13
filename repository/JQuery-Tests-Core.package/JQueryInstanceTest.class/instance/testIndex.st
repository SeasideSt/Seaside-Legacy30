testing-accessors
testIndex
	self
		assert: ((self jQuery: 'div') index: JSStream this)
		equals: self function , '("div").index(this)'