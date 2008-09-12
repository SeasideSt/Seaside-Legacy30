attributes-events
onDoubleClick: aString
	"The ondblclick event occurs when the pointing device button is double clicked over an element."

	self attributes at: 'ondblclick' append: aString separator: ';'