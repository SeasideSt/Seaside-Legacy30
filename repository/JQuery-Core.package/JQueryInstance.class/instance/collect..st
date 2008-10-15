filtering
collect: anObject
	"Translate a set of elements in the jQuery object into another set of values in an array (which may, or may not, be elements)."
	
	self call: 'map' with: (self iteratorFor: anObject)