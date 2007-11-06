accessing
rootClass
	rootClass isNil ifTrue: [
		rootClass := WAHtmlRoot ].
	^rootClass