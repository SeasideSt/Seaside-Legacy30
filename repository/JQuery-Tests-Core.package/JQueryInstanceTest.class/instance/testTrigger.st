testing-events
testTrigger
	self
		assert: ((self jQuery: 'a') trigger: 'click')
		equals: self name , '("a").trigger("click")'