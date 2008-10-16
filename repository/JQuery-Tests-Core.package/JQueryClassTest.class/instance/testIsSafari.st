testing-agent
testIsSafari
	self
		assert: self jQuery isSafari
		equals: self name , '.browser.safari'