initialization
initialize
	| application |
	application := self registerAsApplication: 'comet/counter'.
	application preferenceAt: #sessionClass put: CTSession.
	application addLibrary: SULibrary; addLibrary: CTLibrary