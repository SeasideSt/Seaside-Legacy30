testing
testActions
	self
		assert: ((self jQuery: 'input') autocomplete flushCache)
		equals: self function , '("input").autocomplete("flushCache")'.
	self
		assert: ((self jQuery: 'input') autocomplete option)
		equals: self function , '("input").autocomplete("setData")'.
	self
		assert: ((self jQuery: 'input') autocomplete search)
		equals: self function , '("input").autocomplete("search")'