testing-parsing
testParseAbsolute
	self absoluteExamples do: [ :each | 
		self 
			assert: (WAUrl absolute: each) seasideString = each
			description: each
			resumable: true ]