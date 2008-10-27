testing
testActions
	self
		assert: ((self jQuery: 'span') slider value: 69)
		equals: self name , '("span").slider("moveTo",69)'.
	self
		assert: ((self jQuery: 'span') slider value)
		equals: self name , '("span").slider("value")'