testing-agent
testIsMozilla
	self
		assert: self jQuery isMozilla
		equals: self name , '.browser.mozilla'