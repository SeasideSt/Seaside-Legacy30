events
onDisable: anObject
	"Function that gets called when a tab was disabled."

	self optionAt: 'disable' put: anObject asFunction