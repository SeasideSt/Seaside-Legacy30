authentication
verifyPassword: password forUser: username
	"This method is called by WAAuthMain to verify the username provided
	in the HTTP request. The default implementation compares them against
	the configuration values provided by WAAuthConfiguration. WAAuthMain
	can also be used by itself if you implement this method in your
	own Application subclass to do something different."

	| loginPref hashPref |
	loginPref := self preferenceAt: #login.
	hashPref := self preferenceAt: #passwordHash.
	
	loginPref ifNil: [ self authConfigurationError: 'Login not defined. The default authentication method requires a WAAuthConfiguration' ].
	hashPref ifNil: [ self authConfigurationError: 'Password not defined. The default authentication method requires a WAAuthConfiguration' ].
	
	(username isEmptyOrNil
		or: [ password isEmptyOrNil ])
		ifTrue: [^ false].
	
	^ (loginPref = username)
		and: [ hashPref = (WAPlatform current secureHashFor: password) ]