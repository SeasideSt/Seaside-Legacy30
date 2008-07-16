accessing
attributes
	^ Array
		with: (WAStringAttribute
			key: #mimeType
			comment: 'the Internet media type of HTML documents reported to the browser')
		with: (WAStringAttribute
			key: #charSet
			comment: 'The character set reported to the browser. You may additionally need to configure your server that this is also the character set used by your server.')
		with: ((WAListAttribute
			key: #rootComponent
			comment: 'The root component of this seaside application.') options: self rootComponents)
		with: (WAStringAttribute
			key: #resourceBaseUrl
			group: #server
			comment: 'Sets the base URL for URLS generated with #resourceUrl:')