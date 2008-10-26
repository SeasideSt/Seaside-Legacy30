events
onDeactivate: anObject
	"This function is called any time an accepted draggable stops dragging."

	self optionAt: 'deactivate' put: anObject asFunction