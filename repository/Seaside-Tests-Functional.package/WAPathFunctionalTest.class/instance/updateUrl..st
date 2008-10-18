path
updateUrl: aUrl 
	super updateUrl: aUrl.
	string notNil ifTrue: [
		aUrl addToPath: string.
		aUrl fragment: string ]