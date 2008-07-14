accessing
session
	"returns the current WASession or nil if there is none"
	| context |
	context := self value.
	^ context isNil ifFalse: [ context session ]