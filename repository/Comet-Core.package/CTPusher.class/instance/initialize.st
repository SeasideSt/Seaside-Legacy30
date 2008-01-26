initialization
initialize
	mutex := SeasidePlatformSupport semaphoreClass forMutualExclusion.
	handlers := Array new