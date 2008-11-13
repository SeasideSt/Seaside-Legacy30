testing-literals
testTrue
	self assert: (self parse: 'true') = true.
	self assert: (self parse: 'True') == #True  "Must use == to ensure parse result is a Symbol"