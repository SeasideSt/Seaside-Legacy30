testing
testDontCallSuperInitialize
	self 
		run: WAInvalidObjectInitializationRule new
		selectors: #(initialize)