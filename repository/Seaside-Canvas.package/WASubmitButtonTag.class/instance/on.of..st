callbacks
on: aSymbol of: anObject
	self value: (self labelForSelector: aSymbol of: anObject).
	self callback: (WADelayedSend receiver: anObject selector: aSymbol)