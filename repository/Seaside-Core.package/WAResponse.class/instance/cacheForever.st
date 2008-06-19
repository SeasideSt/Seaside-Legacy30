convenience
cacheForever
	self removeHeaderAt: 'Cache-Control'.
	self removeHeaderAt: 'Pragma'.
	self headerAt: 'Expires' put: 'Thu, 01 Jan 2095 12:00:00 GMT'