private
cache

	cache isNil ifTrue: [cache := WAPlatform current reducedConflictDictionary new].
	^cache.
