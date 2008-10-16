testing-agent
testBrowser
	self
		assert: self jQuery browser
		equals: self name , '.browser'