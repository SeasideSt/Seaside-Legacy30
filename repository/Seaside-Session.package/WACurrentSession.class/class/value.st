evaluating
value
	| context |
	self 
		seasideDeprecatedApi: 'WACurrentSession class>>#value'
		details: 'Use "self session" on a subclass of WAObject or "WACurrentRequestContext value session".'.
	^ (context := WACurrentRequestContext value) isNil ifFalse: [ context session ]