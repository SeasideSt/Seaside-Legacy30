events
onChange: anObject
	"Callback function triggered when the value is changed."

	self optionAt: 'change' put: anObject asFunction