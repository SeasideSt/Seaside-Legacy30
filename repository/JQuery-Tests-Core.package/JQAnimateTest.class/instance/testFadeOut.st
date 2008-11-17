testing
testFadeOut
	self 
		assert: (self target fadeOut: 5 seconds)
		equals: self name , '("div").fadeOut(5000)'.
	self 
		assert: (self target fadeOut: 6 seconds callback: 'done')
		equals: self name , '("div").fadeOut(6000,function(){done})'