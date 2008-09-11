convenience-caching
cacheFor: aDuration
	"tells the user agent to cache the response for the given duration"
	self removeHeaderAt: 'Pragma'. "Proxies"
	self removeHeaderAt: 'Expires'. "HTTP 1.0"
	self cacheControl: 'max-age=', aDuration asSeconds printString. "HTTP 1.1"
	self expiresAt: (DateAndTime now + aDuration).
