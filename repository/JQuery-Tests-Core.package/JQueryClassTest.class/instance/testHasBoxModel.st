testing-deprecated
testHasBoxModel
	self
		assert: self jQuery hasBoxModel
		equals: self function , '.boxModel'