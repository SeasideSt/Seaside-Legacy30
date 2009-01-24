accessing
charSet
	charSet isNil ifTrue: [
		charSet := self class defaultCharSet ].
	^charSet