accessing
attributes
	^ Array
		with: ((WAListAttribute
			key: #rootComponent
			comment: 'The root component of this seaside application.') options: self rootComponents)
		with: (WAStringAttribute
			key: #resourceBaseUrl
			group: #server
			comment: 'Sets the base URL for URLS generated with #resourceUrl:')