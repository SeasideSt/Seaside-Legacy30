initialization
initialize
	mutex := SeasidePlatformSupport semaphoreClass forMutualExclusion.
	process := semaphore := value := nil