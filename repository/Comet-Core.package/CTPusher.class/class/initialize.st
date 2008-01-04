initialization
initialize
	SeasidePlatformSupport
		addToStartUpList: self;
		addToShutDownList: self.
	self startUp