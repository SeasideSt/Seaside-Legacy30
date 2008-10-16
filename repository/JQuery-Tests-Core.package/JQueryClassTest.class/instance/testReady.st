testing-creation
testReady
	self
		assert: (self jQuery ready: (self javascript alert: 'Hello'))
		equals: self name , '(function(){alert("Hello")})'