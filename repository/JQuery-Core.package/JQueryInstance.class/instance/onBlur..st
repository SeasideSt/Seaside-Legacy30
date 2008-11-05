events-dom
onBlur: anObject
	"Bind a function to the blur event of each matched element."
	
	self call: 'blur' with: anObject asFunction