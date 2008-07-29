initializing
setParent: aRequestHandler
	super setParent: aRequestHandler.
	continuations capacity: self sessionContinuationCacheSize.