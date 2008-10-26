events
onAdd: anObject
	"Function that gets called when a tab was added."

	self optionAt: 'add' put: anObject asFunction