testing-transform
testAnsiCharacterRule
	self 
		run: WAAnsiCharactersRule new
		changes: #(
			'character Character codePoint: 123'
			'stringCr (String with: Character cr), (String with: Character cr)'
			'stringTab (String with: Character tab), (String with: Character tab)'
			'stringLf (String with: Character lf), (String with: Character lf)'
			'stringSpace (String with: Character space), (String with: Character space)' )