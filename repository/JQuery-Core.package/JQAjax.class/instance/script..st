callbacks
script: aBlock
	"Defines a script rendering callback."

	self dataType: 'script'.
	self callback: [
		| response |
		response := WAResponse new.
		response contentType: WAMimeType textJavascript.
		owner script: aBlock on: response contents.
		owner requestContext respond: response ]