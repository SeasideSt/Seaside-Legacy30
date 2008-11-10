testing-events
testTrigger
	self
		assert: ((self jQuery: 'a') trigger: 'click')
		equals: self name , '("a").trigger("click")'.
	self
		assert: ((self jQuery: 'a' ) triggerHandler: 'keypress')
		equals: self name , '("a").triggerHandler("keypress")'