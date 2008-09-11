convenience-caching
cacheForever
	self removeHeaderAt: 'Cache-Control'.
	self removeHeaderAt: 'Pragma'.
	self expiresAt: self cacheForeverExpiresDate 