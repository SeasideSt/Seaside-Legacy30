accessing
name
	^ self parent isNil
		ifTrue: [ '' ]
		ifFalse: [ self parent nameOfEntryPoint: self ]