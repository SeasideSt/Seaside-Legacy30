testing-function
testFunctionArguments
	self
		assert: (self function arguments: #(a))
		equals: 'function(a){}'.
	self
		assert: (self function arguments: #(a b))
		equals: 'function(a,b){}'.
	self
		assert: (self function arguments: #(a b c))
		equals: 'function(a,b,c){}'