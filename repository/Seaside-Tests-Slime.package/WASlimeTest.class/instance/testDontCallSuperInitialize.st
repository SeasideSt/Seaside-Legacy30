testing-misc
testDontCallSuperInitialize
	self 
		run: WASlimeBlockLintRule invalidObjectInitialization
		selectors: #(#initialize )