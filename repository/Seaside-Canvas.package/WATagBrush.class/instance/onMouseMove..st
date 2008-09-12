attributes-events
onMouseMove: aString
	"The onmousemove event occurs when the pointing device is moved while it is over an element."

	self attributes at: 'onmousemove' append: aString separator: ';'