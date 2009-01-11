testing-misc
testBasicNewInitializeMissing
	self 
		run: WASlimeBlockLintRule basicNewInitializeMissing
		selectors: #(#initialize )