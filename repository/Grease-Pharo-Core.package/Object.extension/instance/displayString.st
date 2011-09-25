*grease-pharo-core
displayString
	self 
		greaseDeprecatedApi: 'Object>>#displayString'
		details: 'Use #greaseString.'.
	^ self asString