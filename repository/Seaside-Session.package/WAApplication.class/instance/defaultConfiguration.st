configuration
defaultConfiguration
	^ super defaultConfiguration
		removeParent: WARequestHandlingConfiguration instance;
		addParent: WAApplicationConfiguration instance;
		addParent: WASessionConfiguration instance;
		yourself