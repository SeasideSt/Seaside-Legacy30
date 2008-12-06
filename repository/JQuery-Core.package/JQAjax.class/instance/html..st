callbacks
html: aBlock
	"Defines a html rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'html'.
	self callback: [
		| response |
		response := WAResponse new.
		response contentType: self application contentType.
		owner render: aBlock on: response contents.
		owner requestContext respond: response ]