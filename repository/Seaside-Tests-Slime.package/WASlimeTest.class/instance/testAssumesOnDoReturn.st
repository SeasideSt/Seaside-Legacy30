testing-block
testAssumesOnDoReturn
	self 
		run: WAAssumesOnDoReturnRule new
		selectors: #(exceptionAsReturn exceptionAssignment exceptionAsParameter)