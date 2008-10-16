testing-classes
testAddClass
	self
		assert: ((self jQuery: 'p:last') addClass: 'selected')
		equals: self name , '("p:last").addClass("selected")'