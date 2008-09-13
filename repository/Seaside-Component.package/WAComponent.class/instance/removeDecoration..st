decorations
removeDecoration: aDecoration
	| dec |
	dec := self decoration.
	dec = aDecoration ifTrue:
		[self decoration: dec next.
		^ self].

	[dec notNil] whileTrue:
		[dec next = aDecoration
			ifTrue: [dec setNext: aDecoration next.  ^ self]
			ifFalse: [dec := dec next]]