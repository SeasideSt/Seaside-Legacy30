testing
testDoNotCache
	self assert: response headers isEmpty.
	response doNotCache.
	self assert: (response headerAt: 'Cache-Control') value = 'no-cache, must-revalidate'.
	self assert: (response headerAt: 'Expires') value = self doNotCacheExpiryString.
	self assert: (response headerAt: 'Pragma') value = 'no-cache'.
	self assert: response headers size = 3