events
onShow: anObject
	"Callback function triggered when the color picker is shown."

	self optionAt: 'show' put: anObject asFunction