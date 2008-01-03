convenience
doNotCache
	self headerAt: 'Expires' put: 'Thu, 11 Jun 1980 12:00:00 GMT'.
	self headerAt: 'Cache-Control' put: 'no-cache, must-revalidate'.
	self headerAt: 'Pragma' put: 'no-cache'