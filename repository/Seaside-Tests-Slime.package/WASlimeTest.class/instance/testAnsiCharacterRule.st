testing-transform
testAnsiCharacterRule
	self 
		run: WAAnsiCharactersRule new
		changes: #(
			'character Character codePoint: 123' )