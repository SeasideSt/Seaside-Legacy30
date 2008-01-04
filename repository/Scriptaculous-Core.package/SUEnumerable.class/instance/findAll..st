querying
findAll: anObject
	"Returns all the elements for which the iterator returned true."

	self call: 'findAll' argument: (self iteratorFor: anObject)