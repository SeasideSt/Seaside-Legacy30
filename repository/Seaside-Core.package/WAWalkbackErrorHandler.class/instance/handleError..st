actions
handleError: anError
	self open: anError.
	anError isResumable
		ifTrue: [ anError resume ]