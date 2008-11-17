testing-animation
testAnimateParams
	self
		assert: (self animate width: 200; padding: 50; opacity: 'hide')
		equals: self name , '("div").animate({width:200,padding:50,opacity:"hide"},{})'.
	self
		assert: (self animate height: 'toggle'; left: '+=100')
		equals: self name , '("div").animate({height:"toggle",left:"+=100"},{})'