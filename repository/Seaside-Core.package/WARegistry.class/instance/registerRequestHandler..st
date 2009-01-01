deprecated
registerRequestHandler: aRequestHandler
	self seasideDeprecatedApi: 'WARegistry>>registerRequetsHandler:'
		details: 'Use WARegistry>>register:'.
		
	^ self register: aRequestHandler