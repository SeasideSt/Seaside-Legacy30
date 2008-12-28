deprecated
registerCallback: aBlock
	self
		seasideDeprecatedApi: 'WACallbackRegistry>>#registerCallback:'
		details: 'Use WACallbackRegistry>>#registerValueCallback: instead.'.
	^ self registerValueCallback: aBlock