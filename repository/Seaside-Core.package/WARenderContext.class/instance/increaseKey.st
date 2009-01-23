deprecated
increaseKey
	self
		seasideDeprecatedApi: 'WARenderContext>>#increaseKey'
		details: 'Use WACallbackRegistry>>increaseKey. The callback registry is available from WARenderContext or WARenderCanvas by sending #callbacks.'.
	^ self callbacks increaseKey