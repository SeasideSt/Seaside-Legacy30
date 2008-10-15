manipulating
html: aRenderable 
	"Set the html contents of every matched element. This property is not available on XML documents (although it will work for XHTML documents)."
	
	self call: 'html' with: (self render: aRenderable)