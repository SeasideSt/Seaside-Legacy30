testing-modifying
testEmpty
	self 
		assert: (((self jQuery: 'div')) empty)
		equals: self name , '("div").empty()'.