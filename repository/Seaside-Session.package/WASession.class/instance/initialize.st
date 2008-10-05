initializing
initialize
	super initialize.
	continuations := WACache new
			setExpiryPolicy: (WALeastRecentlyUsedExpiryPolicy new);
			yourself.
	monitor := WAProcessMonitor new.
	cookiesEnabled := true