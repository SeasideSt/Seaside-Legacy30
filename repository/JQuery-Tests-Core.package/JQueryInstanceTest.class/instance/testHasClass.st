testing-classes
testHasClass
	self
		assert: ((self jQuery: 'p') hasClass: 'selected')
		equals: self name , '("p").hasClass("selected")'