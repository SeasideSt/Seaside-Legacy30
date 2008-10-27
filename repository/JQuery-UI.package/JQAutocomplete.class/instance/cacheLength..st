options
cacheLength: aNumber
	"The number of backend query results to store in cache. If set to 1 (the current result), no caching will happen. Must be >= 1."

	self optionAt: 'cacheLength' put: aNumber