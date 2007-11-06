decorations
decorateWith: aDecoration during: aBlock
	| val |
	self addDecoration: aDecoration.
	val := aBlock value.
	self removeDecoration: aDecoration.
	^ val