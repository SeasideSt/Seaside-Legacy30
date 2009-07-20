callbacks
script: aBlock
	"Defines a script rendering callback."

	self dataType: 'script'.
	self respond: [ :response |
		response
			doNotCache; 
			contentType: (WAMimeType textJavascript
				charset: self application charSet).
		self script: aBlock on: response stream ]