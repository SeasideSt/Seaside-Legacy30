configuration
defaultConfiguration
	^ WAUserConfiguration new
		addParent: WAStrictTransportSecurityConfiguration instance;
		yourself