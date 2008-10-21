events
onStart: anObject
	"This function is called at the start of a resize operation."
	
	self optionAt: 'start' put: anObject asFunction