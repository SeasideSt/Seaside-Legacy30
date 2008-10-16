testing-agent
testIsOpera
	self
		assert: self jQuery isOpera
		equals: self name , '.browser.opera'