testing-modifying
testBefore
	self
		assert: ((self jQuery: 'p') before: [ :html | html strong: 'Hello' ])
		equals: self name , '("p").before("<strong>Hello</strong>")'.
	self
		assert: ((self jQuery: 'span') insertBefore: '#foo')
		equals: self name , '("span").insertBefore("#foo")'