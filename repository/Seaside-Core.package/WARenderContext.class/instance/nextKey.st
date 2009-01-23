deprecated
nextKey
	self 
		seasideDeprecatedApi: 'WARenderContext>>#nextKey'
		details: 'Use WACallbackRegistry>>nextKey. The callback registry is available from WARenderContext or WARenderCanvas by sending #callbacks.'.
	^ self callbacks nextKey