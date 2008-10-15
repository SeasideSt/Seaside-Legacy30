testing-css
testOffset
	self
		assert: ((self jQuery @ 'div') offset)
		equals: self function , '("div").offset()'