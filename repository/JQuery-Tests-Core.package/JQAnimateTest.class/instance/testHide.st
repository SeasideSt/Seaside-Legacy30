testing
testHide
	self 
		assert: (self target hide)
		equals: self name , '("div").hide()'.
	self 
		assert: (self target hide: 'slow')
		equals: self name , '("div").hide("slow")'.
	self 
		assert: (self target hide: 'fast' callback: 'done')
		equals: self name , '("div").hide("fast",function(){done})'