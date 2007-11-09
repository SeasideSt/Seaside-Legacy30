class initialization
initializeClass
	"WAExternalID initializeClass"

	GeneratorMutex := SeasidePlatformSupport semaphoreClass forMutualExclusion.
	SeasidePlatformSupport addToStartUpList: self.
	self startUp