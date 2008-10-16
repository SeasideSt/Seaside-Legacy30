testing-css
testCssAtPut
	self
		assert: ((self jQuery: 'p') cssAt: 'border' put: '1px solid red')
		equals: self name , '("p").css("border","1px solid red")'