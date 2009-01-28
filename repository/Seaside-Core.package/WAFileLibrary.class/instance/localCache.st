private
localCache
	"The cache is not used in Squeak, but may be used in other dialects (see issue #313).
	Use lazy initialization because instances might already exist and not come through
	an initialize method."
	
	localCache isNil ifTrue: [
		localCache := WAPlatform current reducedConflictDictionary new.
	].
	^localCache.
	