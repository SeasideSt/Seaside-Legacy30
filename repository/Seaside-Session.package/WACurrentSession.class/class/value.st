evaluating
value
	| request |
	self seasideDeprecatedApi: 'WACurrentSession class>>value'
		details: 'Use "self session" on a subclass of WAObject or "WACurrentRequestContext value session"'.
	request := WACurrentRequestContext value.
	^ request isNil ifFalse: [ request session ]