events-register
onMouseUp: anObject
	"Bind a function to the mouseup event of each matched element."
	
	self call: 'mouseup' with: anObject asFunction