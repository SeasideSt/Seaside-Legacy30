initialization
initialize
	super initialize.
	mutex := SeasidePlatformSupport semaphoreClass forMutualExclusion.
	self setExpiryPolicy: WALastAccessExpiryPolicy new.
	self setReapingStrategy: WARetrievalIntervalReapingStrategy new.
	self setMissStrategy: WACacheMissStrategy new.
	self setReapAction: WANotifyReapAction new.
	self clear