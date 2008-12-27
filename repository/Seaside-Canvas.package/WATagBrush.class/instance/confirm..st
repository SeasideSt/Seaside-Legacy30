deprecated
confirm: aString
	self 
		seasideDeprecatedApi: 'WATagBrush>>#confirm:'
		details: 'Use a dedicated Javascript library instead.'.
	self onClick: 'return confirm(' , aString printString , ')'