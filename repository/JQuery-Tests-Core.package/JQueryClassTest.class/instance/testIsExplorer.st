testing-agent
testIsExplorer
	self
		assert: self jQuery isExplorer
		equals: self function , '.browser.msie'