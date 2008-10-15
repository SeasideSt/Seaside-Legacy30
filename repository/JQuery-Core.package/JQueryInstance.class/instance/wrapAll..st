modifying
wrapAll: aRenderable 
	"Wrap all the elements in the matched set into a single wrapper element."
	
	self call: 'wrapAll' with: (self render: aRenderable)