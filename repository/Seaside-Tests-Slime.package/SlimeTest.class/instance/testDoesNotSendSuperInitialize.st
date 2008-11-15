testing-bugs
testDoesNotSendSuperInitialize
	self 
		run: SlimeBlockLintRule doesNotSendSuperInitialize
		selectors: #(initialize postCopy)