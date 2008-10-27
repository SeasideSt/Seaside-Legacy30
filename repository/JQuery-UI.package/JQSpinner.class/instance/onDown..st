events
onDown: anObject
	"Callback function triggered when the spinner decrements."

	self optionAt: 'down' put: anObject asFunction