events
onDeactivate: anObject
	"Function that gets called when sorting was stopped, is propagated to all possible connected lists."

	self optionAt: 'deactivate' put: anObject asFunction