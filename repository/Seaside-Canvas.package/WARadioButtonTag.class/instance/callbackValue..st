attributes
callbackValue: anObject
	group isNil ifFalse: [ self value: (group callbackValue: anObject) ]