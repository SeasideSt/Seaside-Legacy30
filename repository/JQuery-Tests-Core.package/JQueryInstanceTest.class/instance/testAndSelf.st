testing-chaining
testAndSelf
	self
		assert: ((self jQuery: 'div') find: 'p'; andSelf; addClass: 'border')
		equals: self name , '("div").find("p").andSelf().addClass("border")'