private
convertToInteger: aString max: maxValue
	| anInteger |
	anInteger := aString asNumber asInteger.
	anInteger < 0 
		ifTrue: [anInteger := 0]
		ifFalse: [anInteger > maxValue
					ifTrue: [anInteger := maxValue]].
	^anInteger