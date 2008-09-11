convenience-caching
doNotCache
	self expiresAt: self doNotCacheExpiresDate. "HTTP 1.0"
	self cacheControl: 'no-cache, must-revalidate'. "HTTP 1.1"
	self headerAt: 'Pragma' put: 'no-cache' "Proxy Servers"