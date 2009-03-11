callbacks
script: aBlock
	"Defines a script rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'script'.
	self callback: [
		| response |
		response := WAResponse new.
		response contentType: (WAMimeType textJavascript
			charset: self application charSet).
		owner script: aBlock on: response contents.
		owner requestContext respond: response ]