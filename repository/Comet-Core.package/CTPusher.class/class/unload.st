initialization
unload
	SeasidePlatformSupport
		removeFromStartUpList: self;
		removeFromShutDownList: self.
	self shutDown