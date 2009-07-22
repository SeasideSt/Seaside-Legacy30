copying
postCopy
	super postCopy.
	configuration := configuration copy.
	parent := nil