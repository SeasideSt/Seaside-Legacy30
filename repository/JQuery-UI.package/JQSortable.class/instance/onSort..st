events
onSort: anObject
	"Function that gets called during sorting."

	self optionAt: 'sort' put: anObject asFunction