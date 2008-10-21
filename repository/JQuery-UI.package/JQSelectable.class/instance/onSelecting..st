events
onSelecting: anObject
	"This callback is fired during the select operation, on each element added to the selection."
	
	self optionAt: 'selecting' put: anObject asFunction