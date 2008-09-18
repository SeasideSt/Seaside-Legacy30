initializing
initialize
	super initialize.
	continuations := WACache new setExpiryPolicy: WALeastRecentlyUsedExpiryPolicy; yourself.
	monitor := WAProcessMonitor new.
	cookiesEnabled := true