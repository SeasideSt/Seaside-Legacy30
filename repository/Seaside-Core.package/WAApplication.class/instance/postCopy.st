copying
postCopy
	super postCopy.
	configuration := configuration copy.
	libraries := libraries copy