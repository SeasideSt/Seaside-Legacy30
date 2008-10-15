modifying
wrapInner: aRenderable 
	"Wrap the inner child contents of each matched element (including text nodes) with an HTML structure."
	
	self call: 'wrapInner' with: (self render: aRenderable)