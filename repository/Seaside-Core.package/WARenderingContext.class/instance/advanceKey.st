deprecated
advanceKey
	self seasideDeprecatedApi: 'WARenderingContext>>advanceKey'
		details: 'Use WACallbackRegistry>>advanceKey. The callback registry is available from WARenderingContext or WARenderCanvas by sending #callbacks.'.
		
	^ self callbacks advanceKey