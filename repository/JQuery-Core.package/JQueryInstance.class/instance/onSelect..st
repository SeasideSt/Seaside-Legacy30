events-dom
onSelect: anObject
	"Bind a function to the select event of each matched element."
	
	self call: 'select' with: anObject asFunction