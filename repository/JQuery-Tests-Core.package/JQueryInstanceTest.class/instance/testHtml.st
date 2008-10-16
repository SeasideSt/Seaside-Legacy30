testing-manipulating
testHtml
	self 
		assert: (((self jQuery: 'div')) html)
		equals: self name , '("div").html()'.
	self 
		assert: ((self jQuery: 'div') html: [ :html | html div ])
		equals: self name , '("div").html("<div></div>")'