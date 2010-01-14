accessors
each: anObject
	"Iterate over a jQuery object, executing a function for each matched element."
	
	self call: 'each' with: (self iteratorFor: anObject return: false)