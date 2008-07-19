authentication
verifyPassword: password forUser: username
"This method is called by WAAuthMain to verify the username provided
in the HTTP request. The default implementation compares them against
the configuration values provided by WAAuthConfiguration. WAAuthMain
can also be used by itself if you implement this method in your
own Application subclass to do something different."

	| loginAttr hashAttr |
	loginAttr := self configuration attributeAt: #login ifAbsent: [self error: 'Login not defined. The default authentication method requires a WAAuthConfiguration'].
	hashAttr := self configuration attributeAt: #login ifAbsent: [self error: 'Password not defined. The default authentication method requires a WAAuthConfiguration'].
		
	^ (username = (self configuration valueAt: #login))
		and: [password isEmpty not and:
			[(self configuration valueAt: #passwordHash) = 
				(hashAttr valueFromString: password)]]