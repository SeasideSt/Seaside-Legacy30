events
onRemove: anObject
	"Function that gets called when a tab was removed."

	self optionAt: 'remove' put: anObject asFunction