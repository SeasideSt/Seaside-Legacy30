events
onDrag: anObject
	"Function that gets called when the mouse is moved during the dragging."

	self optionAt: 'drag' put: anObject asFunction