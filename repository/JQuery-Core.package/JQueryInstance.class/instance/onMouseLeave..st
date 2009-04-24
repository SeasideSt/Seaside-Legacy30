events-register
onMouseLeave: anObject
	"Bind a function to the mouseleave event of each matched element."
	
	self call: 'mouseleave' with: anObject asFunction