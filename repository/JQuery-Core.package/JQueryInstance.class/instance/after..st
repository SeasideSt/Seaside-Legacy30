modifying
after: aRenderable 
	"Insert content after each of the matched elements."
	
	self call: 'after' with: (self render: aRenderable)