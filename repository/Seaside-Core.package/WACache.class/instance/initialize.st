initialization
initialize
	super initialize.
	expiryPolicy := WALastAccessExpiryPolicy cache: self.
	reapingStrategy := WARetrievalIntervalReapingStrategy cache: self.
	missStrategy := WACacheMissStrategy cache: self.
	expiryAction := WANotifyExpiryAction cache: self.
	self clear