testing-accessors
testAt
	self
		assert: ((self jQuery: 'div') at: 1)
		equals: self function , '("div").get(1)'.
	self
		assert: ((self jQuery: 'div') atAll)
		equals: self function , '("div").get()'.
	self
		assert: ((self jQuery: 'div') first)
		equals: self function , '("div").get(0)'.
	self
		assert: ((self jQuery: 'div') last)
		equals: self function , '("div").get(-1)'