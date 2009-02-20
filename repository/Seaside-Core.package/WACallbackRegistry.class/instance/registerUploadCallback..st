deprecated
registerUploadCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerUploadCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAUploadCallback on: aBlock)