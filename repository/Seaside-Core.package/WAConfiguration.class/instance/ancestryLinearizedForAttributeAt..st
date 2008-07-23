ancestry
ancestryLinearizedForAttributeAt: aSymbol
	| temp linear |
	temp := OrderedCollection new.
	linear := OrderedCollection new.
	self addAncestorsTo: temp forAttributeAt: aSymbol linearization: linear.
	^ linear asArray