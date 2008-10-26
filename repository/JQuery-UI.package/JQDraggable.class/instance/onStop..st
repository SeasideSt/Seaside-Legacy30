events
onStop: anObject
	"Function that gets called when dragging stops."

	self optionAt: 'stop' put: anObject asFunction