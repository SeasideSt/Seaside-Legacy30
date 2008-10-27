events
onChange: anObject
	"Callback function triggered when the color is changed."

	self optionAt: 'change' put: anObject asFunction