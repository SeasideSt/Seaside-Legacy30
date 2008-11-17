testing
testFadeIn
	self 
		assert: (self target fadeIn: 3 seconds)
		equals: self name , '("div").fadeIn(3000)'.
	self 
		assert: (self target fadeIn: 4 seconds callback: 'done')
		equals: self name , '("div").fadeIn(4000,function(){done})'