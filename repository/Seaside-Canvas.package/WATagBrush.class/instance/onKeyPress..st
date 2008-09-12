attributes-events
onKeyPress: aString
	"The onkeypress event occurs when a key is pressed and released over an element."

	self attributes at: 'onkeypress' append: aString separator: ';'