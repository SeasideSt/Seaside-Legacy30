events
onStop: anObject
	"Function that gets called when the user stops sliding."

	self optionAt: 'stop' put: anObject asFunction