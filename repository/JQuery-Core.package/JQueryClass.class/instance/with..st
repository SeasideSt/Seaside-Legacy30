convenience
with: anObject
	"Convenience method to instantiate a jQuery object. Pass it a symbol to reference an DOM id, a block to render new HTML nodes or a string to be used as a CSS query."
	
	anObject isNil
		ifTrue: [ ^ self this ].
	anObject isSymbol
		ifTrue: [ ^ self id: anObject ].
	anObject isBlock
		ifTrue: [ ^ self html: anObject ].
	^ self expression: anObject