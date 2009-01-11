testing-portability
testUsesCurlyBraceArrays
	self 
		run: WASlimeBlockLintRule usesCurlyBraceArrays 
		selectors: #(braceMessage)