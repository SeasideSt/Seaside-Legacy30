accessing
scheme: aString 
	"Set the URL scheme as a string. As some Seaside 2.7 and older uses Symbols here, we transform it to a string. This will be removed in future versions."
	scheme := aString seasideString asLowercase