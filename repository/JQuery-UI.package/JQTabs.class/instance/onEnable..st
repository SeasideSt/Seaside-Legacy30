events
onEnable: anObject
	"Function that gets called when a tab was enabled."

	self optionAt: 'enable' put: anObject asFunction