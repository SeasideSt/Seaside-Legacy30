events
onChange: anObject
	"Function that gets called during sorting, but only when the DOM position has changed."

	self optionAt: 'change' put: anObject asFunction