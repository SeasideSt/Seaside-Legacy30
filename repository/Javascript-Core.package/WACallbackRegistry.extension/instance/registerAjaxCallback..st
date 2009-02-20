*javascript-core
registerAjaxCallback: aBlock 
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerAjaxCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (JSAjaxCallback on: aBlock)