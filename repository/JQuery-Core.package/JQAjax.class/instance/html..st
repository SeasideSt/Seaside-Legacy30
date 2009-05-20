callbacks
html: aBlock
	"Defines a html rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'html'.
	self callback: [
		self requestContext respond: [ :response |
			response
				doNotCache;
				contentType: self application contentType.
			owner render: aBlock on: response stream ] ]