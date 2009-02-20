deprecated
registerCallback: aBlock
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAValueCallback on: aBlock)