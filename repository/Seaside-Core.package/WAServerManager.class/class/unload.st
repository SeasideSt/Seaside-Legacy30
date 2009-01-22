class initialization
unload
	WAPlatform current
		removeFromStartUpList: self;
		removeFromShutDownList: self