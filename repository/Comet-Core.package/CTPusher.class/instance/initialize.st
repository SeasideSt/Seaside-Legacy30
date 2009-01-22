initialization
initialize
	super initialize.
	mutex := WAPlatform current semaphoreClass forMutualExclusion.
	handlers := Array new