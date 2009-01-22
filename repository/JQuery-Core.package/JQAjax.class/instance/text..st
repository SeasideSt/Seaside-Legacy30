callbacks
text: aBlock
	"Defines a text rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'text'.
	self callback: [
		| context |
		context := self requestContext.
		context response 
			doNotCache;
			contentType: (WAMimeType textPlain
				charset: self application charSet).
		aBlock value: context response stream.
		context respond ]