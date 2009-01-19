callbacks
script: aBlock
	"Defines a script rendering callback."

	aBlock fixCallbackTemps.
	self dataType: 'script'.
	self callback: [
		| context |
		context := self requestContext.
		context response doNotCache; contentType: (WAMimeType textJavascript
			charset: self application charSet).
		owner script: aBlock on: context response contents.
		context respond ]