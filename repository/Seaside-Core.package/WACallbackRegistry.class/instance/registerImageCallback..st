deprecated
registerImageCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerImageCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAImageCallback on: aBlock)