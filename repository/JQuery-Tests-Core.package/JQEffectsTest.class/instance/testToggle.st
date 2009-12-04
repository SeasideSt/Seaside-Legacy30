testing-effects
testToggle
	self 
		assert: (self target toggle)
		equals: self function , '("div").toggle()'