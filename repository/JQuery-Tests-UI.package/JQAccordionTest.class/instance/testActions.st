testing
testActions
	self
		assert: ((self jQuery: 'img') accordion activate: 3)
		equals: self name , '("img").accordion("activate",3)'