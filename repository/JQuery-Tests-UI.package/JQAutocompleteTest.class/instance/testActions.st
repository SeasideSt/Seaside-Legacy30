testing
testActions
	self
		assert: ((self jQuery: 'input') autocomplete flushCache)
		equals: self name , '("input").autocomplete("flushCache")'.
	self
		assert: ((self jQuery: 'input') autocomplete option)
		equals: self name , '("input").autocomplete("setData")'.
	self
		assert: ((self jQuery: 'input') autocomplete search)
		equals: self name , '("input").autocomplete("search")'