deprecated
registerActionCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerActionCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAActionCallback on: aBlock)