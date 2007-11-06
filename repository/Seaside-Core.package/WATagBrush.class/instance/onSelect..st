attributes-events
onSelect: aString
	"The onselect event occurs when a user selects some text in a text field."

	self attributes at: 'onselect' append: aString separator: ';'