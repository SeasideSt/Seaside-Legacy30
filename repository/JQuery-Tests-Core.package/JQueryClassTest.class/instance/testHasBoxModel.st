testing-agent
testHasBoxModel
	self
		assert: self jQuery hasBoxModel
		equals: self name , '.boxModel'