decorations
authenticateWith: anAuthenticator during: aBlock
	^ self decorateWith: (WABasicAuthentication new authenticator: anAuthenticator) during: aBlock