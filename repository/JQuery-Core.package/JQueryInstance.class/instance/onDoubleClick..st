events-register
onDoubleClick: anObject
	"Binds a function to the dblclick event of each matched element."
	
	self call: 'dblclick' with: anObject asFunction