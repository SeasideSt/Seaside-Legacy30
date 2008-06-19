convenience
doNotCache
	self headerAt: 'Expires' put: 'Thu, 11 Jun 1980 12:00:00 GMT'. "Proxy Servers"
	self headerAt: 'Cache-Control' put: 'no-cache, must-revalidate'. "HTTP 1.1"
	self headerAt: 'Pragma' put: 'no-cache' "HTTP 1.0"