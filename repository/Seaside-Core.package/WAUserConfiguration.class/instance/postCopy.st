copying
postCopy
	super postCopy.
	values := values copy.
	ancestors := ancestors collect: [ :each | each copy ]