events
onResize: anObject
	"This function is called during the resize, on the drag of the resize handler."

	self optionAt: 'resize' put: anObject asFunction