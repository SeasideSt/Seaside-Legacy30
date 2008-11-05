events-dom
onResize: anObject
	"Bind a function to the resize event of each matched element."
	
	self call: 'resize' with: (self iteratorFor: anObject)