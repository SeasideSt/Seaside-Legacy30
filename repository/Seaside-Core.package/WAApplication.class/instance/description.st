accessing
description
	^ self rootComponent isNil
		ifTrue: [ '' ]
		ifFalse: [ self rootComponent description ]