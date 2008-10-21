events
onStop: anObject
	"This function is called at the end of a resize operation."
	
	self optionAt: 'stop' put: anObject asFunction