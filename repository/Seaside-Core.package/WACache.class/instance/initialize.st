initialization
initialize
	super initialize.
	expiryPolicy := WALastAccessExpiryPolicy cache: self.
	reapingStrategy := WARetrievalIntervalReapingStrategy cache: self.
	missStrategy := WACacheMissStrategy cache: self.
	reapAction := WANotifyReapAction cache: self.
	self clear