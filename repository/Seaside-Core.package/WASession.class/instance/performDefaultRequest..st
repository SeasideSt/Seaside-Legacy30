processing
performDefaultRequest: aRequest
	self sessionContinuationCacheSize isNil ifFalse: [
		continuations capacity: self sessionContinuationCacheSize ].
	^ self start: aRequest