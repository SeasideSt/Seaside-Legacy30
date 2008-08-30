convenience-caching
doNotCache
	self headerAt: 'Expires' put: self doNotCacheExpiresDate. "HTTP 1.0"
	self headerAt: 'Cache-Control' put: 'no-cache, must-revalidate'. "HTTP 1.1"
	self headerAt: 'Pragma' put: 'no-cache' "Proxy Servers"