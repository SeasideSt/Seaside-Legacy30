events
onInit: anObject
	"Callback triggered when the spinner initializes."

	self optionAt: 'init' put: anObject asFunction