events
onUpdate: anObject
	"Function that gets called when the user stopped sorting and the DOM position has changed."

	self optionAt: 'update' put: anObject asFunction