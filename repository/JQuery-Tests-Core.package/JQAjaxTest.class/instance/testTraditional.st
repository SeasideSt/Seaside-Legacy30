testing-options
testTraditional
	self
		assert: (self ajax traditional: true)
		equals: self function , '.ajax({traditional:true})'