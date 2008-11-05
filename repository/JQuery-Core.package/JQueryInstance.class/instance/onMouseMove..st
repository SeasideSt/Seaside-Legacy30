events-dom
onMouseMove: anObject
	"Bind a function to the mousemove event of each matched element."
	
	self call: 'mousemove' with: anObject asFunction