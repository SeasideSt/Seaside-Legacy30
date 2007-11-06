attributes-events
onMouseOut: aString
	"The onmouseout event occurs when the pointing device is moved away from an element."

	self attributes at: 'onmouseout' append: aString separator: ';'