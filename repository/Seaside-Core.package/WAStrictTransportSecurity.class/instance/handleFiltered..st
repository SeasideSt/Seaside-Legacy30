processing
handleFiltered: aRequestContext
	"Adds a Secure-Transport-Security header in case the application is transmitted over HTTPS."
	
	aRequestContext request isSsl ifTrue: [
		aRequestContext response strictTransportSecurity: self maxAge includeSubDomains: self includeSubDomains ].
	super handleFiltered: aRequestContext