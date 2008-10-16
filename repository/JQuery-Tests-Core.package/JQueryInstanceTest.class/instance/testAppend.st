testing-modifying
testAppend
	self
		assert: ((self jQuery: 'p') append: [ :html | html strong: 'Hello' ])
		equals: self name , '("p").append("<strong>Hello</strong>")'.
	self
		assert: ((self jQuery: 'span') appendTo: '#foo')
		equals: self name , '("span").appendTo("#foo")'