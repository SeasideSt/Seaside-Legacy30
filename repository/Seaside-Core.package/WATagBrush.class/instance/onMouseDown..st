attributes-events
onMouseDown: aString
	"The onmousedown event occurs when the pointing device button is pressed over an element."

	self attributes at: 'onmousedown' append: aString separator: ';'