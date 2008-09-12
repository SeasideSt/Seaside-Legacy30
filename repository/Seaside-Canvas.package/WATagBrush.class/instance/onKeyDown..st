attributes-events
onKeyDown: aString
	"The onkeydown event occurs when a key is pressed down over an element."

	self attributes at: 'onkeydown' append: aString separator: ';'