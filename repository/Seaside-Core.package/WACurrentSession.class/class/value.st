evaluating
value
	| request |
	request := WACurrentRequestContext value.
	^ request isNil ifFalse: [ request session ]