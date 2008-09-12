attributes-events
onSubmit: aString
	"The onsubmit event occurs when a form is submitted."

	self attributes at: 'onsubmit' append: aString separator: ';'