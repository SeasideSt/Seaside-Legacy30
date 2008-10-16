convenience
with: anObject
	anObject isNil
		ifTrue: [ ^ self this ].
	anObject isBlock
		ifTrue: [ ^ self html: anObject ].
	anObject isSymbol
		ifTrue: [ ^ self expression: anObject printString ].
	^ self expression: anObject