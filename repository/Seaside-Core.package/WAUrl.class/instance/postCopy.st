copying
postCopy
	super postCopy.
	scheme := scheme copy.
	username := username copy.
	password := password copy.
	hostname := hostname copy.
	port := port copy.
	path := path copy.
	parameters := parameters copy.
	fragment := fragment copy