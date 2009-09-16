private
withLeadingZero: anInteger
	^anInteger < 10
		ifTrue: ['0', anInteger seasideString]
		ifFalse: [anInteger seasideString]
	