copying
postCopy
	super postCopy.
	self clearHandlers.
	mutex := nil