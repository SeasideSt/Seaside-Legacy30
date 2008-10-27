events
onFocus: anObject
	"Callback for the dialogfocus event."

	self optionAt: 'focus' put: anObject asFunction