events
onStart: anObject
	"Function that gets called when the user starts sliding."

	self optionAt: 'start' put: anObject asFunction