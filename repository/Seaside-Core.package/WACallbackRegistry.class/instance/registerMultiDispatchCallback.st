deprecated
registerMultiDispatchCallback
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerMultiDispatchCallback'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: WAMultiDispatchCallback new