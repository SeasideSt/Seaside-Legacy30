events
onStart: anObject
	"This callback is fired at the beginning of the select operation."
	
	self optionAt: 'start' put: anObject asFunction