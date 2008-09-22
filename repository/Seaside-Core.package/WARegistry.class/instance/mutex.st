private
mutex
	^ mutex ifNil: [ mutex := SeasidePlatformSupport semaphoreClass forMutualExclusion ]