events
onActivate: anObject
	"Function that gets called when using connected lists, every connected list on drag start receives it."

	self optionAt: 'activate' put: anObject asFunction