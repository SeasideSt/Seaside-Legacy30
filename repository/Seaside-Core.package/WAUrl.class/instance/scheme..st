accessing
scheme: aString
	"we really expect a String here, Old versions (2.7) expected a Symbol you can still pass a Symbol and get away with it but don't expect this behavior to be supported in future versions.
	#asString is the 'correct' way to convert a Symbol to a String since #displayString will add a hash on VW"
	scheme := aString asString