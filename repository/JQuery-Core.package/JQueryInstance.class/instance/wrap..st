modifying
wrap: aRenderable 
	"Wrap each matched element with the specified HTML content."
	
	self call: 'wrap' with: (self render: aRenderable)