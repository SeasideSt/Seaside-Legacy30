utilities
pickANumberGreaterThan: aNumber
	^ amb valueOf: [aNumber + 1] or: [self pickANumberGreaterThan: aNumber + 1]