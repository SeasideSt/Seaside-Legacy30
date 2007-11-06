testing
verifyPassword: password forUser: username
	^ self application login = username and: [ self application password = password ]