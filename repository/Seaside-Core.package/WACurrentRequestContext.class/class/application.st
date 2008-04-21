accessing
application
	| context |
	context := self value.
	^context value isNil ifFalse: [ context application ]