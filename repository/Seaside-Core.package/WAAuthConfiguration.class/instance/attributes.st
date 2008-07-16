attributes
attributes
	^ Array
		with: (WAStringAttribute
			key: #login
			group: #authentication
			comment: 'The username for this application.')
		with: (WAPasswordAttribute
			key: #passwordHash
			group: #authentication
			comment: 'The password for this application.')