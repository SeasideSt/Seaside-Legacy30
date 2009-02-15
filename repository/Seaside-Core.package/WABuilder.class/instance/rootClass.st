accessing
rootClass
	rootClass isNil ifTrue: [ rootClass := WARoot ].
	^rootClass