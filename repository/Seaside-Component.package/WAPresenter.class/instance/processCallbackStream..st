request processing
processCallbackStream: aCallbackStream
	aCallbackStream processCallbacksWithOwner: self.
	self processChildCallbacks: aCallbackStream.
	aCallbackStream processCallbacksWithOwner: self