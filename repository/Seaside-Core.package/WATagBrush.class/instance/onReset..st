attributes-events
onReset: aString
	"The onreset event occurs when a form is reset."

	self attributes at: 'onreset' append: aString separator: ';'