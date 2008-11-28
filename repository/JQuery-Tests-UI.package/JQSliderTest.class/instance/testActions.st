testing
testActions
	self
		assert: ((self jQuery: 'span') slider value: 69)
		equals: self function , '("span").slider("moveTo",69)'.
	self
		assert: ((self jQuery: 'span') slider value)
		equals: self function , '("span").slider("value")'