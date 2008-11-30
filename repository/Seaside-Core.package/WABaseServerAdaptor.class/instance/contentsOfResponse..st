private
contentsOfResponse: aSeasideResponse
	| contents |
	contents := aSeasideResponse contents contents.
	^aSeasideResponse contentType isBinary
		ifTrue: [ contents ]
		ifFalse: [ self encode: contents ]