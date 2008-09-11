convenience-caching
cacheForeverExpiresDate
	"answers the expiry date that should be used if the response should be cached forever
	
	Note that this is a bit dirty according to HTTP 1.1:
	To mark a response as 'never expires,' an origin server sends an Expires date approximately one year from the time the response is sent. HTTP/1.1 servers SHOULD NOT send Expires dates more than one year in the future. "
	^DateAndTime
		year: 2095 month: 1 day: 1
		hour: 13 minute: 0 second: 0
		offset: Duration zero