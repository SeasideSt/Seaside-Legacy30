deprecated
ensureKeyForHandler: aRequestHandler
	self 
		seasideDeprecatedApi: 'WARegistry>>#ensureKeyForHandler:'
		details: 'Use #ensureKeyFor:.'.
	^ self ensureKeyFor: aRequestHandler