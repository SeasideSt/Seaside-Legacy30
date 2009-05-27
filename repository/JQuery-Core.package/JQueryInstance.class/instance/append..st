modifying
append: aRenderable 
	"Append content to the inside of every matched element."
	
	self call: 'append' with: (self render: aRenderable)