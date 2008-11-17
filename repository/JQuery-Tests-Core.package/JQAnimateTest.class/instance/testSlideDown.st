testing
testSlideDown
	self 
		assert: (self target slideDown: 'slow')
		equals: self name , '("div").slideDown("slow")'.
	self 
		assert: (self target slideDown: 'fast' callback: 'done')
		equals: self name , '("div").slideDown("fast",function(){done})'