initialization
initialize
	super initialize.
	site := WAPlugableSite
		named: (WAKeyGenerator current keyOfLength: 32)
		on: self.
	site ip: '*'.
	site host: '*'.
	SwazooServer singleton addSite: site