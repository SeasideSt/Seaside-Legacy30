testing-block
testInvalidObjectInitialization
	self 
		run: WAInvalidObjectInitializationRule new
		selectors: #( initializeFoo: )