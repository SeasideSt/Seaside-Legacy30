testing-manipulating
testText
	self 
		assert: (((self jQuery: 'p')) text)
		equals: self name , '("p").text()'.
	self 
		assert: ((self jQuery: 'p') text: 'foo')
		equals: self name , '("p").text("foo")'