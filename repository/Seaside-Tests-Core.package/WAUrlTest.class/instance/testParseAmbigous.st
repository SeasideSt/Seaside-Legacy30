testing-parsing
testParseAmbigous
	self ambigousExamples do: [ :each | 
		self 
			assert: (WAUrl absolute: each first) seasideString = each last
			description: each last
			resumable: true ]