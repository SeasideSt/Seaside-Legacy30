testing-classes
testToggleClass
	self
		assert: ((self jQuery: 'p') toggleClass: 'highlight')
		equals: self name , '("p").toggleClass("highlight")'