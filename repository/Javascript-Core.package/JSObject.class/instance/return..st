convenience
return: anObject 
	"Return anObject after evaluating the receiver."
	self after: (JSStream new
			nextPutAll: 'return ';
			javascript: anObject)