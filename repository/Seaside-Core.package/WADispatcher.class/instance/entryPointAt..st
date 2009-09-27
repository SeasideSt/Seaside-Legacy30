deprecated
entryPointAt: aString
	self
		seasideDeprecatedApi: 'WADispatcher>>#entryPointAt:'
		details: 'Use WADispatcher>>#handlerAt:'.
	^ self handlerAt: aString