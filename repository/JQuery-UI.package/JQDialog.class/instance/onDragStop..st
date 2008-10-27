events
onDragStop: anObject
	"Callback for after the dialog has been dragged."

	self optionAt: 'dragStop' put: anObject asFunction