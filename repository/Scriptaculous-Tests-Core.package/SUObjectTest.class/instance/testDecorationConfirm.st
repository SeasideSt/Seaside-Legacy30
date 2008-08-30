testing-decoration
testDecorationConfirm
	self
		assert: (self mock confirm: 'Sure?')
		equals: 'if(confirm("Sure?")){mock}'