attributes
attributes
	^ Array
		with: ((WAStringAttribute key: #login)
			group: #authentication;
			comment: 'The username for this application.';
			yourself)
		with: ((WAPasswordAttribute key: #passwordHash)
			group: #authentication;
			comment: 'The password for this application.';
			label: 'Password';
			yourself)