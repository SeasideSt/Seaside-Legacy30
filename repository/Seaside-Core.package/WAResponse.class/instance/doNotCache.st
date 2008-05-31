convenience
doNotCache
	self headerAt: 'Expires' put: 'Wed, 11 Jun 1980 12:00:00 GMT'. "HTTP 1.0"
	self headerAt: 'Cache-Control' put: 'no-cache, must-revalidate'. "HTTP 1.1"
	self headerAt: 'Pragma' put: 'no-cache' "Proxy Servers"