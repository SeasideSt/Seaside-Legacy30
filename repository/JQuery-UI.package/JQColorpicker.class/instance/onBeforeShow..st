events
onBeforeShow: anObject
	"Callback function triggered before the color picker is shown."

	self optionAt: 'beforeShow' put: anObject asFunction