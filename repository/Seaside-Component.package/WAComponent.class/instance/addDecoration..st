decorations
addDecoration: aDecoration
	| previous current |
	previous := nil.
	current := self decoration.
	[ current ~~ self and: [ self decoration: current shouldWrap: aDecoration ] ] whileTrue: [
		previous := current.
		current := current next ].
	aDecoration setNext: current.
	previous isNil
		ifTrue: [ self decoration: aDecoration ]
		ifFalse: [ previous setNext: aDecoration ].
	^ aDecoration