testing
testCacheForeverExpiresInFarFuture
	
	| expiresDate delta |
	expiresDate := response cacheForeverExpiresDate.
	delta := expiresDate - DateAndTime now.
	
	"at least a week in the future
	HTTP 1.1 says should not be bigger than a year"
	self assert: delta positive.
	self assert: delta days >= 7
