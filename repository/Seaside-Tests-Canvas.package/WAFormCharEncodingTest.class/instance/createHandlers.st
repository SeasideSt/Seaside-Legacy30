as yet unclassified
createHandlers
	|application|
	application := WAApplication new.
	application preferenceAt: #charSet put: 'utf-16'.
	^ Array with: application.