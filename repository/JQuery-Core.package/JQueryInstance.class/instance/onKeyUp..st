events
onKeyUp: anObject
	"Bind a function to the keyup event of each matched element."
	
	self call: 'keyup' with: anObject asFunction