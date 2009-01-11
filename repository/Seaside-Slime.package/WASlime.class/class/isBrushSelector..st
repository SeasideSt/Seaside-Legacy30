testing
isBrushSelector: aString
	Symbol 
		hasInterned: aString
		ifTrue: [ :symbol | ^ brushSelectors includes: symbol ].
	^ false