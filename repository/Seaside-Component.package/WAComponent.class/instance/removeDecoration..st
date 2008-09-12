decorations
removeDecoration: aDecoration
	| dec |
	dec := self decoration.
	dec = aDecoration ifTrue:
		[self decoration: dec owner.
		^ self].

	[dec notNil] whileTrue:
		[dec owner = aDecoration
			ifTrue: [dec owner: aDecoration owner.  ^ self]
			ifFalse: [dec := dec owner]]