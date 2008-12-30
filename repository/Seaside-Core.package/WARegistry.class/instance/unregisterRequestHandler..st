deprecated
unregisterRequestHandler: aRequestHandler
	self 
		seasideDeprecatedApi: 'WARegistry>>#unregisterRequestHandler:'
		details: 'Use #unregister:.'.
	^ self unregister: aRequestHandler