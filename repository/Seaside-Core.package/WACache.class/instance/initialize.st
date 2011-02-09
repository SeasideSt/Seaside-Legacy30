initialization
initialize
	super initialize.
	self initializeCollections.
	self initializeMutex.
	self setExpiryPolicy: WALastAccessExpiryPolicy new.
	self setReapingStrategy: WARetrievalIntervalReapingStrategy new.
	self setMissStrategy: WACacheMissStrategy new.
	self setRemovalAction: WANotifyRemovalAction new