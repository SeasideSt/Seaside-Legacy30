events
onResizeStart: anObject
	"Callback for the beginning of the dialog being resize."

	self optionAt: 'resizeStart' put: anObject asFunction