options
helper: aElement
	"Allows for a helper element to be used for dragging display. The supplied function receives the event and the element being sorted, and should return a valid DOM node to be used as a custom proxy helper."

	self optionAt: 'helper' put: aElement