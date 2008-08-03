authentication
verifyPassword: password forUser: username
"This method is called by WAAuthMain to verify the username provided
in the HTTP request. The default implementation compares them against
the configuration values provided by WAAuthConfiguration. WAAuthMain
can also be used by itself if you implement this method in your
own Application subclass to do something different."

	((self configuration hasAttributeNamed: #login)
		and: [self configuration hasAttributeNamed: #passwordHash])
			ifFalse: [^ self error: 'Login or password not present. The default authentication method requires a WAAuthConfiguration'].
		
	^ (username = (self configuration valueAt: #login))
		and: [password isEmpty not and:
			[(self configuration valueAt: #passwordHash) = 
				((self configuration attributeNamed: #passwordHash) valueFromString: password)]]