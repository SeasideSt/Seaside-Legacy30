registration
configureNewApplication: anApplication
	anApplication configuration
		removeParent: WAApplicationConfiguration instance; "make the chain slightly cleaner"
		addParent: WARenderLoopConfiguration instance;
		addParent: self applicationDefaults.