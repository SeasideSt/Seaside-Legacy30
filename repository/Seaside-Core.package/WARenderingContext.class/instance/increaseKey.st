deprecated
increaseKey
	self seasideDeprecatedApi: 'WARenderingContext>>increaseKey'
		details: 'Use WACallbackRegistry>>increaseKey. The callback registry is available from WARenderingContext or WARenderCanvas by sending #callbacks.'.
		
	^ self callbacks increaseKey