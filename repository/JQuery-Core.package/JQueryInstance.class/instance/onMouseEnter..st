events-register
onMouseEnter: anObject
	"Bind a function to the mouseenter event of each matched element."
	
	self call: 'mouseenter' with: anObject asFunction