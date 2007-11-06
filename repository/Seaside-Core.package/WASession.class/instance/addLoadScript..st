scripts
addLoadScript: aString
	^ (scripts ifNil: [scripts := OrderedCollection new]) add: aString