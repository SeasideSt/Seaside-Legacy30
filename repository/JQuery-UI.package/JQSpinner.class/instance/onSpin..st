events
onSpin: anObject
	"Callback function triggered when the spinner spins."

	self optionAt: 'spin' put: anObject asFunction