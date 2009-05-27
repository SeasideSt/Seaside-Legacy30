callbacks
html: aRenderable
	"Defines a html rendering callback."

	self dataType: 'html'.
	self callback: [
		self requestContext respond: [ :response |
			response
				doNotCache;
				contentType: self application contentType.
			owner render: aRenderable on: response stream ] ]