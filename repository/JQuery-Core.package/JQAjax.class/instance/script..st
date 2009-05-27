callbacks
script: aBlock
	"Defines a script rendering callback."

	self dataType: 'script'.
	self callback: [
		self requestContext respond: [ :response |
			response
				doNotCache; 
				contentType: (WAMimeType textJavascript
					charset: self application charSet).
			owner script: aBlock on: response stream ] ]