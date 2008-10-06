testing
testCaching
	self assert: response expiresDate isNil.
	response cacheForever.
	self assert: (response headerAt: 'Expires') value = self cacheForeverExpiryString.
	self assert: response headers size = 1