events
onActivate: anObject
	"This function is called any time an accepted draggable starts dragging."

	self optionAt: 'activate' put: anObject asFunction