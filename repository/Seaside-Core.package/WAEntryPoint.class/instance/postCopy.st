copying
postCopy
	super postCopy.
	configuration := configuration copy.
	self setParent: nil