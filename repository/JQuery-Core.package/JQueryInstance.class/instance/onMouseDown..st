events-dom
onMouseDown: anObject
	"Binds a function to the mousedown event of each matched element."
	
	self call: 'mousedown' with: anObject asFunction