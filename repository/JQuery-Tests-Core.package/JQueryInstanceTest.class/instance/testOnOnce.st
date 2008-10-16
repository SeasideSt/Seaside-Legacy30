testing-events
testOnOnce
	self
		assert: ((self jQuery: 'a') on: 'click' once: (self javascript alert: 'Clicked'))
		equals: self name , '("a").one("click",function(){alert("Clicked")})'