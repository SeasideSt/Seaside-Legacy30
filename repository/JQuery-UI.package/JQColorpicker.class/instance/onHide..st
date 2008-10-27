events
onHide: anObject
	"Callback function triggered when the color picker is hidden."

	self optionAt: 'hide' put: anObject asFunction