events
onClose: anObject
	"Callback for the close.dialog event."

	self optionAt: 'close' put: anObject asFunction