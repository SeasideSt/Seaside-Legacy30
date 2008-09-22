initializing
initialize
	super initialize.
	continuations := WALRUCache new.
	monitor := WAProcessMonitor new.
	cookiesEnabled := true