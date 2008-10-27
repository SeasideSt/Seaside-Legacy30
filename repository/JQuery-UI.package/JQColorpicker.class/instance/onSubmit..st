events
onSubmit: anObject
	"Callback function triggered when the color it is chosen."

	self optionAt: 'submit' put: anObject asFunction