testing
testActions
	self
		assert: ((self jQuery: 'div') dialog moveToTop)
		equals: self name , '("div").dialog("moveToTop")'.
	self
		assert: ((self jQuery: 'div') dialog open)
		equals: self name , '("div").dialog("open")'