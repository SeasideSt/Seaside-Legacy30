events
onRemove: anObject
	"Function that gets called when a sortable item has been dragged out from the list and into another."

	self optionAt: 'remove' put: anObject asFunction