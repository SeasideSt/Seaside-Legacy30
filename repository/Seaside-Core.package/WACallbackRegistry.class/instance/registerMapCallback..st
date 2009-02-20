deprecated
registerMapCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerMapCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAMapCallback on: aBlock)