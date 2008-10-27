events
onDragStart: anObject
	"Callback for the beginning of the dialog being dragged."

	self optionAt: 'dragStart' put: anObject asFunction