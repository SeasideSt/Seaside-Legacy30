testing-attributes
testRemoveAttribute
	self
		assert: ((self jQuery: 'button') removeAttribute: 'disabled')
		equals: self name , '("button").removeAttr("disabled")'