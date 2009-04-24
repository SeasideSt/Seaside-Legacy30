events-register
onMouseOut: anObject
	"Bind a function to the mouseout event of each matched element."
	
	self call: 'mouseout' with: anObject asFunction