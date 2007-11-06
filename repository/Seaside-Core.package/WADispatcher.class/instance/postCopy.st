copying
postCopy
	super postCopy.
	entryPoints := entryPoints valuesCollect: [ :each | each copy setParent: self ]