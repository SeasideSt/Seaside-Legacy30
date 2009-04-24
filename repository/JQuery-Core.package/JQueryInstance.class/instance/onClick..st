events-register
onClick: anObject
	"Binds a function to the change event of each matched element."
	
	self call: 'click' with: anObject asFunction