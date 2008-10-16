testing-events
testUnbind
	self
		assert: ((self jQuery: 'a') unbind: 'click')
		equals: self name , '("a").unbind("click")'