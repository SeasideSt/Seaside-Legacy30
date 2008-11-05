private
terminate: aRequestContext
	monitor terminate.
	^ WAResponse new nextPutAll: 'Process terminated'