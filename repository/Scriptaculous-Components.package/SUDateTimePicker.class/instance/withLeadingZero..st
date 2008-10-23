private
withLeadingZero: anInteger
	^anInteger < 10
		ifTrue: ['0', anInteger asString]
		ifFalse: [anInteger asString]
	