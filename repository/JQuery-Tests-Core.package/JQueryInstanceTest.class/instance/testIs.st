testing-filtering
testIs
	self
		assert: ((self jQuery: 'div') is: ':odd')
		equals: self name , '("div").is(":odd")'