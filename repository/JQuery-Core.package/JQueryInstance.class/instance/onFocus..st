events-register
onFocus: anObject
	"Binds a function to the focus event of each matched element."
	
	self call: 'focus' with: anObject asFunction