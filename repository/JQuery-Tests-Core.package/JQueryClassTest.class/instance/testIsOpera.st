testing-agent
testIsOpera
	self
		assert: self jQuery isOpera
		equals: self function , '.browser.opera'