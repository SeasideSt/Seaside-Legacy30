initialization
initialize
	super initialize.
	mutex := SeasidePlatformSupport semaphoreClass forMutualExclusion.
	handlers := Array new