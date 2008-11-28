testing
testActions
	self
		assert: ((self jQuery: 'ul') selectable refresh)
		equals: self function , '("ul").selectable("refresh")'.
	self
		assert: ((self jQuery: 'ul') selectable toggle)
		equals: self function , '("ul").selectable("toggle")'