accessing
nextPutAll: aString
	super nextPutAll: (codec url encode: aString)