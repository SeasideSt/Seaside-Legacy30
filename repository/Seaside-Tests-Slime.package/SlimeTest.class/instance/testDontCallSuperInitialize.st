testing-misc
testDontCallSuperInitialize
	self 
		run: SlimeBlockLintRule invalidObjectInitialization
		selectors: #(initialize)