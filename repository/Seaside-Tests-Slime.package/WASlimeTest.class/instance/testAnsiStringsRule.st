testing-transform
testAnsiStringsRule
	self 
		run: WAAnsiStringsRule new
		changes: #( 
			'stringCr (String with: Character cr), (String with: Character cr)'
			'stringTab (String with: Character tab), (String with: Character tab)'
			'stringLf (String with: Character lf), (String with: Character lf)'
			'stringCrLf (String with: Character cr with: Character lf), (String with: Character cr with: Character lf)'
			'stringSpace (String with: Character space), (String with: Character space)'
			'findTokens ''123'' subStrings: '','''
			'findTokensCharacter ''123'' subStrings: '','''
		)