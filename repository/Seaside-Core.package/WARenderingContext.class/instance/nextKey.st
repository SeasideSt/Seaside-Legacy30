deprecated
nextKey
	self seasideDeprecatedApi: 'WARenderingContext>>nextKey'
		details: 'Use WACallbackRegistry>>nextKey. The callback registry is available from WARenderingContext or WARenderCanvas by sending #callbacks.'.
		
	^ self callbacks nextKey