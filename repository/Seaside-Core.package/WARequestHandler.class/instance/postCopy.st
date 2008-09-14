copying
postCopy
	super postCopy.
	filter := filter copy.
	self setParent: nil; setFilter: (self filter copyTo: self)