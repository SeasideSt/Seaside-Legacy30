initialization
startUp
	self generator: SeasidePlatformSupport randomClass new.
	self mutex: SeasidePlatformSupport semaphoreClass forMutualExclusion