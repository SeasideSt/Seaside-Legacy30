events
onStop: anObject
	"Function that gets called when sorting has stopped."

	self optionAt: 'stop' put: anObject asFunction