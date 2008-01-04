convenience
return: anObject
	"Return anObject after evaluating the receiver."

	self after: (SUStream new nextPutAll: 'return '; javascript: anObject)