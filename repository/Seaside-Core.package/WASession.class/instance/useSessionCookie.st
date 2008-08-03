configuration
useSessionCookie
	^ cookiesEnabled and: [ self preferenceAt: #useSessionCookie ]