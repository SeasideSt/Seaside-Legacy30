deprecated
registerDispatchCallback
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerDispatchCallback'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: WADispatchCallback new