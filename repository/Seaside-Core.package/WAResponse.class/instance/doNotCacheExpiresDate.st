convenience-caching
doNotCacheExpiresDate
	"answers the expiry date that should be used if the response should not be forever"
	^DateAndTime
		year: 1980 month: 6 day: 11
		hour: 11 minute: 0 second: 0
		offset: Duration zero