attributes-events
onUnload: aString
	"The onunload event occurs when the user agent removes a document from a window."

	self attributes at: 'onunload' append: aString separator: ';'