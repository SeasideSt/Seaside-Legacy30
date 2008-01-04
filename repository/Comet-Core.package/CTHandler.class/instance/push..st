actions
push: aString
	socket ifNil: [ ^ false ].
	^ socket pushData: aString