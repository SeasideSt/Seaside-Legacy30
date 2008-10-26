events
onStart: anObject
	"Function that gets called when sorting starts."

	self optionAt: 'start' put: anObject asFunction