events-dom
onMouseOver: anObject
	"Bind a function to the mouseover event of each matched element."
	
	self call: 'mouseover' with: anObject asFunction