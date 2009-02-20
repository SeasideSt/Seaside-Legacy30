deprecated
registerValueCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerValueCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAValueCallback on: aBlock)