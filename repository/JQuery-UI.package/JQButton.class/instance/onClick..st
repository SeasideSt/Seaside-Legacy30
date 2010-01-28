events-generated
onClick: anObject
	"Usually the native click event, with the exception of keyboard-triggered click with the space key on anchors and generally on checkboxes and radio buttons."

	self optionAt: 'click' put: anObject asFunction