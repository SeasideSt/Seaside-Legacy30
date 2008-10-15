callbacks
html: aRenderable
	"Defines a html rendering callback."

	self dataType: 'html'.
	self callback: [
		| response |
		response := WAResponse new.
		response contentType: WAMimeType textHtml.
		owner render: aRenderable on: response contents.
		owner requestContext returnResponse: response ]