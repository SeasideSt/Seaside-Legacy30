initialization
initialize
	"The cache is not used in Squeak, but may be used in other dialects (see issue #313)"
	
	super initialize.
	cache := WAPlatform current reducedConflictDictionary new