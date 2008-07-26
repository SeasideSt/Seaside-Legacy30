initializing
setParent: aRequestHandler
	super setParent: aRequestHandler.
	self sessionContinuationCacheSize isNil 
		ifFalse: [ continuations capacity: self sessionContinuationCacheSize ]