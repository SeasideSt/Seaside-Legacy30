modifying
after: anObject 
	"Insert content after each of the matched elements."
	
	self call: 'after' with: (self render: anObject)