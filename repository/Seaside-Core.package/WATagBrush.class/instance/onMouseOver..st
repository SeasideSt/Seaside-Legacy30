attributes-events
onMouseOver: aString
	"The onmouseover event occurs when the pointing device is moved onto an element."

	self attributes at: 'onmouseover' append: aString separator: ';'