accessing
description
	^ self rootClass isNil
		ifTrue: [ '' ]
		ifFalse: [ self rootClass description ]