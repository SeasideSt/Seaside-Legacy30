callbacks
text: aBlock
	"Defines a text rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'text'.
	self callback: [
		self requestContext respond: [ :response |
			response
				doNotCache;
				contentType: (WAMimeType textPlain 
					charset: self application charSet).
			aBlock value: response stream ] ]