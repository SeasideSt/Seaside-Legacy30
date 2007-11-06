accessing-children
childrenDo: aBlock
	children ifNotNil: [ children do: aBlock ]