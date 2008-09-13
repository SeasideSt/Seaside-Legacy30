decorations
addDecoration: newDecoration
	| prev dec |
	prev := nil.
	dec := self decoration.
	[dec ~~ self and: [self decoration: dec shouldWrap: newDecoration]] whileTrue:
		[prev := dec.
		dec := dec next].
	newDecoration setNext: dec.
	prev
		ifNil: [self decoration: newDecoration]
		ifNotNil: [prev setNext: newDecoration].
	^ newDecoration