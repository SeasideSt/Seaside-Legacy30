convenience
with: anObject
	anObject isBlock
		ifTrue: [ ^ self html: anObject ].
	anObject isSymbol
		ifTrue: [ ^ self expression: anObject printString ].
	^ self expression: anObject