events
onStop: anObject
	"Callback function triggered when the progressbar is stopped."

	self optionAt: 'stop' put: anObject asFunction