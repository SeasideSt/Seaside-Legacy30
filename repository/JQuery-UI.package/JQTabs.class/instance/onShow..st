events
onShow: anObject
	"Function that gets called when a tab is shown."

	self optionAt: 'show' put: anObject asFunction