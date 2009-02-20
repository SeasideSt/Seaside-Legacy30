deprecated
registerCancelActionCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerCancelActionCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WACancelActionCallback on: aBlock)