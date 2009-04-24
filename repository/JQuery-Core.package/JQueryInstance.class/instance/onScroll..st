events-register
onScroll: anObject
	"Bind a function to the scroll event of each matched element."
	
	self call: 'scroll' with: anObject asFunction