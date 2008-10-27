testing
testActions
	self
		assert: ((self jQuery: 'ul') selectable refresh)
		equals: self name , '("ul").selectable("refresh")'.
	self
		assert: ((self jQuery: 'ul') selectable toggle)
		equals: self name , '("ul").selectable("toggle")'