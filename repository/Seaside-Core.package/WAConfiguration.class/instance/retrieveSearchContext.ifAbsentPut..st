attributes-private
retrieveSearchContext: aSymbol ifAbsentPut: aBlock
	"Answers a search context. If the context resides in the cache, the value from the cache is returned. If not, a new cache entry is created using aBlock."
	
	cachedSearchContexts isNil ifTrue: [
		cachedSearchContexts := IdentityDictionary new ].
	^ cachedSearchContexts at: aSymbol ifAbsentPut: aBlock.