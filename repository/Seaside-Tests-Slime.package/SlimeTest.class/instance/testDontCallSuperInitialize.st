testing-misc
testDontCallSuperInitialize
	self 
		run: SlimeBlockLintRule dontCallSuperInitialize
		selectors: #(initialize)