testing-modifying
testAfter
	self
		assert: ((self jQuery: 'p') after: [ :html | html strong: 'Hello' ])
		equals: self name , '("p").after("<strong>Hello</strong>")'.
	self
		assert: ((self jQuery: 'span') insertAfter: '#foo')
		equals: self name , '("span").insertAfter("#foo")'