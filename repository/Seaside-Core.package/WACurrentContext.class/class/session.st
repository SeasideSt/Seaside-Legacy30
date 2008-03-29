accessing
session
	| context |
	context := self value.
	^context value isNil ifFalse: [ context session ]