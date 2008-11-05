events-dom
onLoad: anObject
	"Binds a function to the load event of each matched element."
	
	self call: 'load' with: anObject asFunction