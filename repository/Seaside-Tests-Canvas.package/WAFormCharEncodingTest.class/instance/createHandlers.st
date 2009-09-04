as yet unclassified
createHandlers
	| entryPoint |
	entryPoint := WAEntryPoint new.
	entryPoint preferenceAt: #charSet put: 'utf-16'.
	^ Array with: entryPoint