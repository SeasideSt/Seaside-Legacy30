testing
testActions
	self
		assert: ((self jQuery: 'div') dialog moveToTop)
		equals: self function , '("div").dialog("moveToTop")'.
	self
		assert: ((self jQuery: 'div') dialog open)
		equals: self function , '("div").dialog("open")'