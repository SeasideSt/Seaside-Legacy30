events
onKeyDown: anObject
	"Bind a function to the keydown event of each matched element."
	
	self call: 'keydown' with: anObject asFunction