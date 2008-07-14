attributes
attributes
	^ Array
		with: (WAStringAttribute
			key: #login
			group: #authentication
			comment: 'The username for this application.')
		with: (WAStringAttribute
			key: #password
			group: #authentication
			comment: 'The password for this application.')