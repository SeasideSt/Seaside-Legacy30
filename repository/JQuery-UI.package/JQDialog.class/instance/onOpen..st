events
onOpen: anObject
	"Callback for the dialogopen event."

	self optionAt: 'open' put: anObject asFunction