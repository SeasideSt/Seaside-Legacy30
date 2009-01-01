deprecated
registerRequestHandler: aRequestHandler
	self 
		seasideDeprecatedApi: 'WARegistry>>#registerRequestHandler:'
		details: 'Use register:.'.
	^ self register: aRequestHandler