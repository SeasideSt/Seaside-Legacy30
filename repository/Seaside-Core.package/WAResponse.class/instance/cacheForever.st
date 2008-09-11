convenience-caching
cacheForever
	self removeHeaderAt: 'Cache-Control'.
	self removeHeaderAt: 'Pragma'.
	self headerAt: 'Expires' put: self cacheForeverExpiresDate 