configuration
defaultConfiguration
	^ super defaultConfiguration
		addParent: WANullReapingStrategyConfiguration instance;
		yourself