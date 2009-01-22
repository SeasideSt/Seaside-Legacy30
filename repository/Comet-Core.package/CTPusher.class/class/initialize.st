initialization
initialize
	WAPlatform current
		addToStartUpList: self;
		addToShutDownList: self