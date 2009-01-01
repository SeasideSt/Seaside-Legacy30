deprecated
context: aContext owner: anObject
	self seasideDeprecatedApi: 'WACallbackRegistry class>>context:owner:'
		details: 'Use #context:. Callbacks are no longer executed in the context of an owning component.'.
	^ self context: aContext