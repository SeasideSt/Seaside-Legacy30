callbacks
html: aBlock
	"Defines a html rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'html'.
	self callback: [
		| context |
		context := self requestContext.
		context response doNotCache; contentType: self application contentType.
		owner render: aBlock on: context response contents.
		context respond ]