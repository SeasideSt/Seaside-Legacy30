events-register
onKeyPress: anObject
	"Binds a function to the keypress event of each matched element."
	
	self call: 'keypress' with: anObject asFunction