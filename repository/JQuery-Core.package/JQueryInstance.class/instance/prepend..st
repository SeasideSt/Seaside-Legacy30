modifying
prepend: anObject 
	"Prepend content to the inside of every matched element."
	
	self call: 'prepend' with: (self render: anObject)