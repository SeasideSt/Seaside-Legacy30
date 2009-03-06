events-generated
onResize: anObject
	"This event is triggered when the dialog is resized."
	
	self optionAt: 'resize' put: anObject asFunction