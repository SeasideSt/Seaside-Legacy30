events
onStop: anObject
	"This callback is fired at the end of the select operation."
	
	self optionAt: 'stop' put: anObject asFunction