initialization
initializeOn: aStream table: anArray
	super initializeOn: aStream table: anArray.
	codec := WACurrentRequestContext value codec