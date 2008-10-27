events
onStart: anObject
	"Callback function triggered when the progressbar is started."

	self optionAt: 'start' put: anObject asFunction