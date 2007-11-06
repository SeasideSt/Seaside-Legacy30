attributes-events
onMouseUp: aString
	"The onmouseup event occurs when the pointing device button is released over an element."

	self attributes at: 'onmouseup' append: aString separator: ';'