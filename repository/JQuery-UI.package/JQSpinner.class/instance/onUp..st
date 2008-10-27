events
onUp: anObject
	"Callback function triggered when the spinner increments."

	self optionAt: 'up' put: anObject asFunction