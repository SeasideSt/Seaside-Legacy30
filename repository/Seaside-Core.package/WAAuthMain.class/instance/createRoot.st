creational
createRoot
	^ super createRoot
		addDecoration: (WABasicAuthentication new authenticator: self);
		yourself