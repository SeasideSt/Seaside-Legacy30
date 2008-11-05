events-dom
onError: anObject
	"Binds a function to the error event of each matched element."
	
	self call: 'error' with: anObject asFunction