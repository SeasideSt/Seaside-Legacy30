callbacks
on: aSymbol of: anObject
	self callback: (WADelayedSend receiver: anObject selector: aSymbol).
	self with: (self labelForSelector: aSymbol of: anObject)