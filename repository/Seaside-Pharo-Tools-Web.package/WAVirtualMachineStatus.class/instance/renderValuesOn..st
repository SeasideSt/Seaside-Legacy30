rendering
renderValuesOn: html
	| image |
	image := SmalltalkImage current.
	
	self renderLabel: 'VM Version' value: (image getSystemAttribute: 1004) on: html.
	self renderLabel: 'VM Type' value: ((image vmParameterAt: 40) * 8) printString, 'bit' on: html.
	self renderLabel: 'Endianness' value: image endianness on: html.
	
	self renderLabel: 'Image Path' value: (image getSystemAttribute: 1) on: html.
	
	self renderLabel: 'Document to Open' value: (image getSystemAttribute: 2) on: html.
	self renderLabel: 'VM Options' value: (self vmOptionsFrom: image) on: html.
	self renderLabel: 'Command Line Arguments' value: (self commandLineArgumentsFrom: image) on: html.
	self
		renderLabel: 'Builtin Modules'
		value: [
			html unorderedList list: image listBuiltinModules ]
		on: html.
	self
		renderLabel: 'Loaded Modules'
		value: [
			html unorderedList list: image listLoadedModules ]
		on: html