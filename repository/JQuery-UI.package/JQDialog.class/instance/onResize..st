events
onResize: anObject
	"Callback for during the dialog being resize."

	self optionAt: 'resize' put: anObject asFunction