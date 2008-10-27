events
onPause: anObject
	"Callback function triggered when the progressbar is paused."

	self optionAt: 'pause' put: anObject asFunction