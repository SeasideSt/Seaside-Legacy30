testing-modifying
testRemove
	self 
		assert: (((self jQuery: 'div')) remove)
		equals: self name , '("div").remove()'.
	self 
		assert: (((self jQuery: 'div')) remove: 'p')
		equals: self name , '("div").remove("p")'