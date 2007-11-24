accessing
scheme: aString
	"we really expect a String here, Old versions (2.7) expected a Symbol you can still pass a Symbol and get away with it but don't expect this behavior to be supported in future versions."
	scheme := aString toString