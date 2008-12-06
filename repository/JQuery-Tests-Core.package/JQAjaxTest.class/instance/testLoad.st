testing
testLoad
	self
		assert: ((self jQuery: 'li') load)
		equals: self function , '("li").load("/")'