rendering
renderValuesOn: html
	| image |
	image := SmalltalkImage current.

	self renderLabel: 'Operating System' value: (image getSystemAttribute: 1001) on: html.
	self renderLabel: 'Version' value: (image getSystemAttribute: 1002) on: html.
	self renderLabel: 'Processor Type' value: (image getSystemAttribute: 1003) on: html.