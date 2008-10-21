events
onUnselecting: anObject
	"This callback is fired during the select operation, on each element removed from the selection."
	
	self optionAt: 'unselecting' put: anObject asFunction