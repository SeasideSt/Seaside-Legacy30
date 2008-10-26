events
onStart: anObject
	"Function that gets called when dragging starts."

	self optionAt: 'start' put: anObject asFunction