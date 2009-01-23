deprecated
advanceKey
	self
		seasideDeprecatedApi: 'WARenderContext>>#advanceKey'
		details: 'Use WACallbackRegistry>>#advanceKey. The callback registry is available from WARenderContext or WARenderCanvas by sending #callbacks.'.
	^ self callbacks advanceKey