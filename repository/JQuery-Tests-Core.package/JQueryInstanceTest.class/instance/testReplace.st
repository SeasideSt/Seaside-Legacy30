testing-modifying
testReplace
	self
		assert: ((self jQuery: 'p') replaceWith: [ :html | html emphasis: 'Hello' ])
		equals: self name , '("p").replaceWith("<em>Hello</em>")'.
	self
		assert: ((self jQuery html: [ :html | html div: 'Hello' ]) replaceAll: '.foo')
		equals: self name , '("<div>Hello</div>").replaceAll(".foo")'