instance creation
fromString: aString
	| main endOfSub sub parts parameters |
	main  := aString copyUpTo: $/.
	endOfSub := aString indexOf: $;.
	endOfSub = 0
		ifTrue: [ endOfSub := aString size ]
		ifFalse: [ endOfSub := endOfSub - 1 ].
	sub := aString copyFrom: main size + 2 to: endOfSub.
	endOfSub = aString size ifTrue: [
		^self main: main sub: sub ].
	parts := (aString copyFrom: endOfSub + 1 to: aString size) findTokens: ';'.
	parameters := RBSmallDictionary new.
	parts do: [ :each | 
		parameters
			at: (each copyUpTo: $=) trimBlanks
			put: (each copyAfter: $=) trimBlanks ].
	^self main: main sub: sub parameters: parameters