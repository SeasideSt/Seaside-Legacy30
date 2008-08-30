convenience-caching
cacheForMinutes: anInteger
	| seconds |
	seconds := anInteger * 60.
	self headerAt: 'Cache-Control' put: 'max-age=', seconds printString. "HTTP 1.1"
	self removeHeaderAt: 'Pragma'. "Proxies"
	self removeHeaderAt: 'Expires'. "HTTP 1.0"
