events
onChange: anObject
	"Binds a function to the change event of each matched element."
	
	self call: 'change' with: anObject asFunction