testing
testToggle
	self 
		assert: (self target toggle)
		equals: self name , '("div").toggle()'