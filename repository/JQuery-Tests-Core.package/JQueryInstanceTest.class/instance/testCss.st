testing-css
testCss
	self
		assert: ((self jQuery: 'div') css: (Dictionary new
			at: 'border' put: '1px solid red';
			yourself))
		equals: self name , '("div").css({border:"1px solid red"})'