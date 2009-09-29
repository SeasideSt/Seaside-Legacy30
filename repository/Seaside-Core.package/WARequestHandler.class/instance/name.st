accessing
name
	^ self isRoot
		ifFalse: [ '' ]
		ifTrue: [ self parent nameOfHandler: self ]