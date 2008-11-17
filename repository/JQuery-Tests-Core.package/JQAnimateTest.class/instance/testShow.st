testing
testShow
	self 
		assert: (self target show)
		equals: self name , '("div").show()'.
	self 
		assert: (self target show: 'slow')
		equals: self name , '("div").show("slow")'.
	self 
		assert: (self target show: 'fast' callback: 'done')
		equals: self name , '("div").show("fast",function(){done})'