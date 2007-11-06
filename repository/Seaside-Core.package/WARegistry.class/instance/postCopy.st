copying
postCopy
	super postCopy.
	mutex := nil.
	self clearHandlers