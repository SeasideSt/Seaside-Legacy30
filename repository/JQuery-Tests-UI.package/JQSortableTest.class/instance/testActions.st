testing
testActions
	self
		assert: ((self jQuery: 'ul') sortable refresh)
		equals: self name , '("ul").sortable("refresh")'.
	self
		assert: ((self jQuery: 'ul') sortable refreshPositions)
		equals: self name , '("ul").sortable("refreshPositions")'