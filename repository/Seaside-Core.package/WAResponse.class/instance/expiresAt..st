accessing-headers
expiresAt: aDateAndTime
	"The Expires entity-header field gives the date/time after which the response is considered stale. A stale cache entry may not normally be returned by a cache (either a proxy cache or a user agent cache) unless it is first validated with the origin server (or with an intermediate cache that has a fresh copy of the entity).
	
	To mark a response as 'never expires,' an origin server sends an Expires date approximately one year from the time the response is sent. HTTP/1.1 servers SHOULD NOT send Expires dates more than one year in the future. "
	self headerAt: 'Expires' putDate: aDateAndTime