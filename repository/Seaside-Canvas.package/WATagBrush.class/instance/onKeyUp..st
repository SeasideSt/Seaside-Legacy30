attributes-events
onKeyUp: aString
	"The onkeyup event occurs when a key is released over an element."

	self attributes at: 'onkeyup' append: aString separator: ';'