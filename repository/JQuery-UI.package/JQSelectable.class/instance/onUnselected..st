events
onUnselected: anObject
	"This callback is fired at the end of the select operation, on each element removed from the selection."
	
	self optionAt: 'unselected' put: anObject asFunction