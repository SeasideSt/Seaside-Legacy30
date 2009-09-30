deprecated
registerMultiDispatchCallback
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerMultiDispatchCallback'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: WAMultiDispatchCallback new