attributes-events
onBlur: aString
	"The onblurs event occurs when the element that is in focus, loses that focus."

	self attributes at: 'onblur' append: aString separator: ';'