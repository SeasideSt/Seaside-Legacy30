modifying
before: aRenderable 
	"Insert content before each of the matched elements."
	
	self call: 'before' with: (self render: aRenderable)