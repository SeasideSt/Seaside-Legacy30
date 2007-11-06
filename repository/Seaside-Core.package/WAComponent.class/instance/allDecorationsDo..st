iterating
allDecorationsDo: aBlock
	| ea |
	ea := self decoration.
	[ea notNil and: [ea ~~ self]] whileTrue:
		[aBlock value: ea.
		ea := ea owner]