initializing
initialize
	super initialize.
	self initializeFilters.
	continuations := WACache new
			setExpiryPolicy: (WALeastRecentlyUsedExpiryPolicy new);
			yourself.
	cookiesEnabled := false