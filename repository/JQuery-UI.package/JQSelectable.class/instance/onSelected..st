events
onSelected: anObject
	"This callback is fired at the end of the select operation, on each element added to the selection."
	
	self optionAt: 'selected' put: anObject asFunction