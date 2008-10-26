events
onOver: anObject
	"Function that gets called when a sortable item is moved into a connected list."

	self optionAt: 'over' put: anObject asFunction