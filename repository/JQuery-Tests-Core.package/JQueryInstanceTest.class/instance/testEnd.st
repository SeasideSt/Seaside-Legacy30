testing-chaining
testEnd
	self
		assert: ((self jQuery: 'p') find: 'span'; addClass: 'border'; end; addClass: 'highlight')
		equals: self name , '("p").find("span").addClass("border").end().addClass("highlight")'