events
onOut: anObject
	"Function that gets called when a sortable item is moved away from a connected list."

	self optionAt: 'out' put: anObject asFunction