private
contentsOfResponse: aResponse
	| contents |
	contents := aResponse contents contents.
	^aResponse contentType isBinary
		ifTrue: [ contents ]
		ifFalse: [ self encode: contents ]