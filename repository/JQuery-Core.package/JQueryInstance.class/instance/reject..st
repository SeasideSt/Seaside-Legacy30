filtering
reject: anObject
	"Removes all elements from the set of matched elements that does not match the specified function."
	
	self call: 'filter' with: (self iteratorFor: anObject return: true)