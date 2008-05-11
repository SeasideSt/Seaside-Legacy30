accessing
nextPutAll: aString
	super nextPutAll: (codec encodeUrl: aString)