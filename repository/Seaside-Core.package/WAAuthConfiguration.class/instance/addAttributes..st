attributes
addAttributes: attributes
	(attributes string: #login)
		group: #authentication;
		comment: 'The username for this application.'.
	(attributes password: #passwordHash)
		group: #authentication;
		comment: 'The password for this application.';
		label: 'Password'.