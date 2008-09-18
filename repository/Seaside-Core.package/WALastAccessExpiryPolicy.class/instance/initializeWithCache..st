initialization
initializeWithCache: aCache
	super initializeWithCache: aCache.
	lastAccessTable := SeasidePlatformSupport reducedConflictDictionary new