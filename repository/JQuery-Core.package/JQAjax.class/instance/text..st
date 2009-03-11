callbacks
text: aBlock
	"Defines a text rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'text'.
	self callback: [
		| response |
		response := WAResponse new.
		response contentType: (WAMimeType textPlain
			charset: self application charSet).
		aBlock value: response stream.
		owner requestContext respond: response ]