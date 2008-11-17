testing
testSlideUp
	self 
		assert: (self target slideUp: 'slow')
		equals: self name , '("div").slideUp("slow")'.
	self 
		assert: (self target slideUp: 'fast' callback: 'done')
		equals: self name , '("div").slideUp("fast",function(){done})'