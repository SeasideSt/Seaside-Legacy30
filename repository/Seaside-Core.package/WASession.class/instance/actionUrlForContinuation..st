accessing
actionUrlForContinuation: aContinuation
	^ self actionUrlForKey: (continuations store: (lastContinuation := aContinuation))