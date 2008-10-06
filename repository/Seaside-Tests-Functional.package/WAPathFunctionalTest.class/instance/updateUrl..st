path
updateUrl: aUrl 
	super updateUrl: aUrl.
	aUrl addToPath: counter count seasideString.
	aUrl fragment: counter count seasideString