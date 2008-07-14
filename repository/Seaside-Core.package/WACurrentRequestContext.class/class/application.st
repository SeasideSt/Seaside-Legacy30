accessing
application
	"returns the current WAApplication or nil if there is none"
	| context |
	context := self value.
	^ context isNil ifFalse: [ context application ]