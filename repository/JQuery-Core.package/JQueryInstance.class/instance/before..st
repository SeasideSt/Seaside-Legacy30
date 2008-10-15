modifying
before: anObject 
	"Insert content before each of the matched elements."
	
	self call: 'before' with: (self render: anObject)