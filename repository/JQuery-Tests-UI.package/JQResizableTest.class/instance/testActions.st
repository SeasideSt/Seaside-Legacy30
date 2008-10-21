testing
testActions
	self
		assert: ((self jQuery: 'img') resizable disable)
		equals: self name , '("img").resizable("disable")'.
	self
		assert: ((self jQuery: 'img') resizable enable)
		equals: self name , '("img").resizable("enable")'.
	self
		assert: ((self jQuery: 'img') resizable destroy)
		equals: self name , '("img").resizable("destroy")'
		