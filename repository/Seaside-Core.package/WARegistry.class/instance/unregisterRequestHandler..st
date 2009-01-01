deprecated
unregisterRequestHandler: aRequestHandler
	self seasideDeprecatedApi: 'WARegistry>>unregisterRequetsHandler:'
		details: 'Use WARegistry>>unregister:'.
		
	^ self unregister: aRequestHandler