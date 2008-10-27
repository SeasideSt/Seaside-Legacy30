events
onDrag: anObject
	"Callback for during the dialog being dragged."

	self optionAt: 'drag' put: anObject asFunction