testing-agent
testIsSafari
	self
		assert: self jQuery isSafari
		equals: self function , '.browser.safari'