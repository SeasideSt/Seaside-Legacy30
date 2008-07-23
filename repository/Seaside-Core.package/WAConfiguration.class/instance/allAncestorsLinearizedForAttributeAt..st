ancestry
allAncestorsLinearizedForAttributeAt: aSymbol
	| linear |
	linear := self ancestryLinearizedForAttributeAt: aSymbol.
	^ linear isEmpty
		ifFalse: [ linear allButFirst ]
		ifTrue: [ linear ]