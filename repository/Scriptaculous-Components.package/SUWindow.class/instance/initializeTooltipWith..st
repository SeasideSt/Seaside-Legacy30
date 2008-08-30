initialize-release
initializeTooltipWith: aString
	| stringArray |
	stringArray := self initializeWith: aString.
	stringArray size > 2
		ifTrue: [self tooltipKey: (stringArray at: 3)].
	^stringArray 