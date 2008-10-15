events
onSubmit: anObject
	"Bind a function to the submit event of each matched element."
	
	self call: 'submit' with: anObject asFunction