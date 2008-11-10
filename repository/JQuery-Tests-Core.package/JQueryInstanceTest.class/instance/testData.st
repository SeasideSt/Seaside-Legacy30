testing-accessors
testData
	self
		assert: ((self jQuery: 'div') dataAt: 'foo')
		equals: self name , '("div").data("foo")'.
	self
		assert: ((self jQuery: 'div') dataAt: 'foo' put: 123)
		equals: self name , '("div").data("foo",123)'.
	self
		assert: ((self jQuery: 'div') removeDataAt: 'foo')
		equals: self name , '("div").removeData("foo")'