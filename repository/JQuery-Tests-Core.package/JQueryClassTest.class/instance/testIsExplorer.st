testing-agent
testIsExplorer
	self
		assert: self jQuery isExplorer
		equals: self name , '.browser.msie'