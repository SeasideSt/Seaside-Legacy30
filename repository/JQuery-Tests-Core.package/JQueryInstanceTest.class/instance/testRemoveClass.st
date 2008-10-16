testing-classes
testRemoveClass
	self
		assert: ((self jQuery: 'p:even') removeClass: 'selected')
		equals: self name , '("p:even").removeClass("selected")'