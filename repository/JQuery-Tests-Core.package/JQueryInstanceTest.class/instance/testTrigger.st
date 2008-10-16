testing-events
testTrigger
	self
		assert: ((self jQuery: 'a') trigger: 'click')
		equals: self function , '("a").trigger("click")'