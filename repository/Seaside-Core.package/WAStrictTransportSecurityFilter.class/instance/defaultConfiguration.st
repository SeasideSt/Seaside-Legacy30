configuration
defaultConfiguration
	^ WAUserConfiguration new
		addParent: WAStrictTransportSecurityFilter instance;
		yourself