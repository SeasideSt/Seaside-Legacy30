testing-classes
testToggleClass
	self
		assert: (self jQuery @ 'p' toggleClass: 'highlight')
		equals: self function , '("p").toggleClass("highlight")'