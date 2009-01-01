deprecated
context: aContext owner: anObject
	self 
		seasideDeprecatedApi: 'WACallbackRegistry class>>#context:owner:'
		details: 'Use #new. Callbacks are no longer instantiated with a context and an owning component.'.
	^ self new