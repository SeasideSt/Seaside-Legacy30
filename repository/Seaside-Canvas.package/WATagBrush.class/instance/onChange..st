attributes-events
onChange: aString
	"The onchange event occurs when a select input element has a selection made or when a text input element has a change in the text."

	self attributes at: 'onchange' append: aString separator: ';'