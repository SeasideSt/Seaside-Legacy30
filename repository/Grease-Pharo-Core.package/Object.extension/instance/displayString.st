*grease-pharo-core
displayString
	self 
		greaseDeprecatedApi: 'Object>>#displayString'
		details: 'Use #seasideString.'.
	^ self asString