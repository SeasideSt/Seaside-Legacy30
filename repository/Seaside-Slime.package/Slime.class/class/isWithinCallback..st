testing
isWithinCallback: aNode
	| parent |
	parent := aNode parent 
		ifNil: [ ^ false ].
	(aNode isBlock and: [ parent isMessage and: [ callbackSelectors includes: parent selector ] ])
		ifTrue: [ ^ true ].
	^ self isWithinCallback: parent