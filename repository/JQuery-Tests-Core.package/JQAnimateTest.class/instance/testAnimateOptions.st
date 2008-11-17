testing-animation
testAnimateOptions
	self
		assert: (self animate duration: 5 seconds)
		equals: self name , '("div").animate({},{duration:5000})'.
	self
		assert: (self animate easing: 'linear')
		equals: self name , '("div").animate({},{easing:"linear"})'.
	self
		assert: (self animate queue: false)
		equals: self name , '("div").animate({},{queue:false})'