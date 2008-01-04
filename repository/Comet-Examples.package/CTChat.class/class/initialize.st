initialization
initialize
	| application |
	application := self registerAsApplication: 'comet/chat'.
	application preferenceAt: #sessionClass put: CTChatSession.
	application addLibrary: SULibrary; addLibrary: CTLibrary