querying
find: anObject
	"Finds the first element for which the iterator returns true."

	self call: 'find' argument: (self iteratorFor: anObject)