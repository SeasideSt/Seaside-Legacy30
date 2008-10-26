events
onSelect: anObject
	"Function that gets called when clicking a tab."

	self optionAt: 'select' put: anObject asFunction