accessors
each: anObject
	"Execute a function within the context of every matched element."
	
	self call: 'each' with: (self iteratorFor: anObject return: false)