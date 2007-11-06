processing
verifyRequest: aRequest
	^ authenticator verifyPassword: aRequest password forUser: aRequest user