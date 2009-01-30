configuration
defaultConfiguration
	^ super defaultConfiguration
		removeParent: WARegistryConfiguration instance;
		addParent: WAApplicationConfiguration instance;
		addParent: WASessionConfiguration instance;
		yourself