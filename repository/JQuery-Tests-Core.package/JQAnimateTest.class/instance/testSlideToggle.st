testing
testSlideToggle
	self 
		assert: (self target slideToggle: 'slow')
		equals: self name , '("div").slideToggle("slow")'.
	self 
		assert: (self target slideToggle: 'fast' callback: 'done')
		equals: self name , '("div").slideToggle("fast",function(){done})'