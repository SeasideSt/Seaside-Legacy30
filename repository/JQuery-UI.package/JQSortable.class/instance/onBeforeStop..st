events
onBeforeStop: anObject
	"Function that gets called when sorting stops, but when the placeholder/helper is still available."

	self optionAt: 'beforeStop' put: anObject asFunction