class initialization
initialize
	"WAExternalID initialize"

	GeneratorMutex := SeasidePlatformSupport semaphoreClass forMutualExclusion.
	SeasidePlatformSupport addToStartUpList: self.
	self startUp