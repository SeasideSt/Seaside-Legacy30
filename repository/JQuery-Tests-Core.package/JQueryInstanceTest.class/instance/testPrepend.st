testing-modifying
testPrepend
	self
		assert: ((self jQuery: 'p') prepend: [ :html | html strong: 'Hello' ])
		equals: self name , '("p").prepend("<strong>Hello</strong>")'.
	self
		assert: ((self jQuery: 'span') prependTo: '#foo')
		equals: self name , '("span").prependTo("#foo")'