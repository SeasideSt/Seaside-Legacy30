attributes-events
onLoad: aString
	"The onload event occurs when the user agent finishes loading a window."

	self attributes at: 'onload' append: aString separator: ';'