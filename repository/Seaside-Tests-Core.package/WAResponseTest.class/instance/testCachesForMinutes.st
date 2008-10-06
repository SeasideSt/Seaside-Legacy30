testing
testCachesForMinutes
	self assert: response expiresDate isNil.
	response cacheFor: (Duration days: 0 hours: 0 minutes: 7 seconds: 1).
	self assert: response headers size = 2.
	self assert: response expiresDate notNil. "we use max-age not expires."
	self assert: (response headerAt: 'Cache-Control') notNil.
	self assert: (response headerAt: 'Cache-Control') value = 'max-age=421'.