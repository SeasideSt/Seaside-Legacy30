*seaside-development
ancestryLinearizedForAttributeAt: aSymbol
	| linear |
	linear := OrderedCollection new.
	self addAncestorsTo: linear forAttributeAt: aSymbol.
	^ linear asArray