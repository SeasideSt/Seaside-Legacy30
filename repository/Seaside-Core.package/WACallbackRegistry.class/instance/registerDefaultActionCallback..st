deprecated
registerDefaultActionCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerDefaultActionCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WADefaultActionCallback on: aBlock)