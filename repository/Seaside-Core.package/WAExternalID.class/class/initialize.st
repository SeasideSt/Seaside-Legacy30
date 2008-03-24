initialization
initialize
	self startUp.
	SeasidePlatformSupport addToStartUpList: self.
	GeneratorSpace := ($a to: $z) , ($A to: $Z) , ($0 to: $9) , (Array with: $_ with: $-)
		collect: [ :each | each asInteger ].
	GeneratorMutex := SeasidePlatformSupport semaphoreClass forMutualExclusion