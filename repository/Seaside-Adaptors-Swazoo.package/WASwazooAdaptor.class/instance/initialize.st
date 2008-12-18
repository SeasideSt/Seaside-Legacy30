initialization
initialize
	super initialize.
	site := WAPlugableSite named: (WAExternalID new: 32) seasideString on: self.
	site ip: '*'.
	site host: '*'.
	SwazooServer singleton addSite: site